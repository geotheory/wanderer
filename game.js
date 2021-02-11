
// Game setup and Phaser flow

var level, lines, level_title, level_moves, cursors, playerID, input_sleeping, 
    diamonds_target, diamonds_collected, moves_remaining, portal_out,
    monster, monsterID, cookies,
    e = [],       // main container for elements and their sprites. Order is preserved so e[n].id is their array index
    queue = [],   // element triggers not actioned immediately are queued
    busy = false, // pause everything while an element is moving
    hold = false; // hold player's movement until all triggers complete
    dead = false, // true when killed
    keydown = 0,  // keypress timer
    speed = 30,   // delay of moving objects (lower = faster)
    create_this = 0, // globalise the create() function's methods for level management
    sound = false,
    verbose = false;

var w = document.getElementById('main').offsetWidth;
var h = 1.25 * 16 * w / 40;
var cellW = w / 40;
var cellH = h / 16;
var scaler = w / 800;

// functions to map grid positions to canvas
function mapX (x) { return (x * cellW - cellW) + (10 * scaler); }
function mapY (y) { return (h - (y * cellH)) + (13 * scaler); }


var elements = {
    "@": "player", 
    " ": "space", 
    "-": "space",
    "=": "dark wall", 
    "#": "light wall", 
    "/": "left slope", 
    "\\": "right slope",
    "O": "boulder", 
    "*": "diamond", 
    ":": "dirt", 
    "<": "left arrow", 
    ">": "right arrow", 
    "!": "fire", 
    "^": "balloon",
    "T": "portal in", 
    "A": "portal out", 
    "X": "exit", 
    "C": "add moves", 
    "S": "baby monster", 
    "M": "big monster", 
    "+": "cage",
    "B": "bomb"
};

const sleep = (milliseconds) => { return new Promise(resolve => setTimeout(resolve, milliseconds)) }  

const { tidy, mutate, arrange, desc } = Tidy;

// reads in data and builds the level. Accepts level number and option to purge existing level

function load_level(level_number) {
    
    level_num = level_number;
    saveCookie('current_level', level_num);

    if(create_this.children.list.length > 0) create_this.children.list = [];
    e = [];

    var data = create_this.cache.text.get(`data${level_number}`);
    level = data;
    lines = level.split('\n');
    level_title = lines[16];
    document.getElementById('gameNote').textContent = level_title;
    document.getElementById('gameLevel').textContent = 'Level: ' + level_number;
    moves_remaining = Number(lines[17]);
    if(moves_remaining === 0) moves_remaining = 99999;  // 99999 denotes unlimited moves and will not count down
    document.getElementById('movesRemaining').textContent = "⏳ " + [moves_remaining, 'unlimited'][(moves_remaining === 99999)+0];
    portal_out = { "x": -1, "y": -1 }; // global
    monster = false;

    for(y=16; y>0; y--) {
        for(x=1; x<=40; x++) {
            var key = lines[16 - y].substr(x - 1, 1);
            var new_element = {'id': e.length, 'key': key, 'type': elements[key], 'x': x, 'y': y };
            if(typeof(elements[key]) === 'undefined') console.log('unknown element:', key);
            if(elements[key] != 'space' && elements[key] != 'portal out') e.push(new_element);
            if(elements[key] == 'portal out') portal_out = { "x": x, "y": y };
            if(new_element.type === 'big monster'){
                monster = true;
                monsterID = new_element.id;
            }
        }
    }

    diamonds_target = e.filter(i => i.type == 'diamond').length;
    diamonds_collected = 0;
    document.getElementById('diamondsRemaining').textContent = "💎 " + (diamonds_target - diamonds_collected);

    // this.add.image(400, 200, 'mist');
    var dark_wall_graphics = create_this.add.graphics({ fillStyle: { color: 0x777777 } });
    var light_wall_graphics = create_this.add.graphics({ fillStyle: { color: 0x888888 } });
    
    for(var i=0; i<e.length; i++) {
        if(e[i].type == 'dark wall') {
            e[i].sprite = new Phaser.Geom.Rectangle( e[i].x * cellW - cellW, h - (e[i].y * cellH), cellW, cellH, '#000', '#000' );
            dark_wall_graphics.fillRectShape(e[i].sprite);
        }
        if(e[i].type == 'light wall') {
            e[i].sprite = new Phaser.Geom.Rectangle( e[i].x * cellW - cellW, h - (e[i].y * cellH), cellW, cellH, '#000', '#000' );
            light_wall_graphics.fillRectShape(e[i].sprite);
        }
        if(e[i].type == 'diamond') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'diamond'); }
        if(e[i].type == 'add moves') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'add moves'); }
        if(e[i].type == 'boulder') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'boulder'); }
        if(e[i].type == 'dirt') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'dirt'); }
        if(e[i].type == 'left slope') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'left slope'); }
        if(e[i].type == 'right slope') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'right slope'); }
        if(e[i].type == 'fire') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'fire'); }
        if(e[i].type == 'portal in') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'portal in'); }
        if(e[i].type == 'exit') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'exit'); }
        if(e[i].type == 'left arrow') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'left arrow'); }
        if(e[i].type == 'right arrow') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'right arrow'); }
        if(e[i].type == 'balloon') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'balloon'); }
        if(e[i].type == 'big monster') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'big monster'); }
        if(e[i].type == 'baby monster') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'baby monster'); }
        if(e[i].type == 'cage') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'cage'); }
        if(e[i].type == 'bomb') { e[i].sprite = create_this.add.image(mapX(e[i].x), mapY(e[i].y), 'bomb'); }
        if(e[i].type == 'player') { playerID = i; }
    }
    // render player sprites last
    e[playerID].sprite = create_this.add.image(mapX(e[playerID].x), mapY(e[playerID].y), 'player');
    cursors = create_this.input.keyboard.createCursorKeys();
    busy = false;
    hold = false;
    dead = false;
}


// e index position of any element at coordinates (x,y)
function id_element(x, y) {
    match = e.filter(i => i.x == x && i.y == y);
    if(match.length > 1) throw 'error in id_element(' + x + ',' + y + '): multiple elements at coordinates';
    if(match.length == 0) return -1;
    return match[0].id;
}

function kill_element(id) {
    if(id === -1) return;       // enables e.g. kill_element(id_element(x,y))
    e[id].sprite.destroy(true); // remove from canvas
    e[id].x = -1;               // prevent id_element() identifying them
}

//-----------------------------------------------------------------------------------

// PHASER

var config = {
    parent: 'game-area',
    type: Phaser.AUTO,
    width: w,
    height: h,
    // backgroundColor: '#000',
    scene: {
        preload: preload,
        create: create,
        update: update
    },
    fps: {
        target: 30,
        min: 30,
        forceSetTimeOut: true
    },
    audio: {
        disableWebAudio: true
    }
}

function preload () {
    for(var i=1; i<=61; i++) this.load.text({ key: `data${i}`, url: `./screens/screen.${i}.txt` });
    // this.load.text({ key: 'data', url: './screens/screen.1.txt' });
    // this.load.text({ key: 'data', url: './orig2/wanderer/screens/test' });
    // this.load.image('mist', 'backgrounds/mist.jpg');
    this.load.svg('diamond', 'sprites/diamond.svg', { scale: 0.43 * scaler });
    this.load.svg('add moves', 'sprites/add-moves.svg', { scale: 0.04 * scaler });
    this.load.svg('boulder', 'sprites/boulder.svg', { scale: 0.2 * scaler });
    this.load.svg('dirt', 'sprites/dirt.svg', { scale: 0.15 * scaler });
    this.load.svg('left slope', 'sprites/slope-left.svg', { scale: 0.18 * scaler });
    this.load.svg('right slope', 'sprites/slope-right.svg', { scale: 0.18 * scaler });
    this.load.svg('fire', 'sprites/fire.svg', { scale: 0.3 * scaler });
    this.load.svg('portal in', 'sprites/portal-in.svg', { scale: 0.01  * scaler});
    this.load.svg('exit', 'sprites/exit.svg', { scale: 0.25 * scaler });
    this.load.svg('left arrow', 'sprites/arrow-left.svg', { scale: 0.2 * scaler });
    this.load.svg('right arrow', 'sprites/arrow-right.svg', { scale: 0.2 * scaler });
    this.load.svg('balloon', 'sprites/balloon.svg', { scale: 0.4 * scaler });
    this.load.svg('baby monster', 'sprites/monster-baby.svg', { scale: 0.25 * scaler });
    this.load.svg('big monster', 'sprites/monster-big.svg', { scale: 0.2 * scaler });
    this.load.svg('cage', 'sprites/cage.svg', { scale: 0.2 * scaler });
    this.load.svg('bomb', 'sprites/bomb.svg', { scale: 0.4 * scaler });
    this.load.svg('player', 'sprites/player.svg', { scale: 0.17 * scaler });
    this.load.svg('player-left', 'sprites/player-left.svg', { scale: 0.17 * scaler });
    this.load.svg('player-right', 'sprites/player-right.svg', { scale: 0.17 * scaler });
    this.load.svg('player-up', 'sprites/player-up.svg', { scale: 0.17 * scaler });
    this.load.svg('player-down', 'sprites/player-down.svg', { scale: 0.17 * scaler });
    this.load.svg('player-dead', 'sprites/player-dead.svg', { scale: 0.17 * scaler });

    this.load.audio('sound-teleport', 'sounds/teleport.wav');
    this.load.audio('sound-tick', 'sounds/tick.wav');
    this.load.audio('sound-diamond', 'sounds/diamond.wav');
    this.load.audio('sound-fire', 'sounds/fire.wav');
    this.load.audio('sound-boulder-killed', 'sounds/boulder.wav');
    this.load.audio('sound-boulder-fall', 'sounds/boulder-fall.wav');
    this.load.audio('sound-arrow', 'sounds/arrow.wav');
}


function create () {

    create_this = this;
    load_level(level_num);

}


function update () {
    
    if(busy || dead) return;

    if(queue.length !== 0){
        for(var i=0; i<queue.length; i++) {
            var q = queue[i];
            queue = queue.filter((x,ind) => ![i].includes(ind)); // remove from queue
            var moved = move(q);
            if(moved) break;
        }
    }
    else hold = false;

    if( !input_sleeping && !hold ) {

        if(cursors.left.isDown || cursors.right.isDown || cursors.up.isDown || cursors.down.isDown || swipeX || swipeY) {

            // key inputs
            var dx = 0, dy = 0, x1, y1, x2, y2;
            if ( cursors.left.isDown || swipeX === -1 ) { dx = -1; }
            else if ( cursors.right.isDown || swipeX === 1 ) { dx = 1; }
            else if ( cursors.down.isDown || swipeY === 1 ) { dy = -1; }
            else if ( cursors.up.isDown || swipeY === -1 ) { dy = 1; }

            x1 = e[playerID].x;
            y1 = e[playerID].y;
            x2 = x1 + dx;
            y2 = y1 + dy;

            var target_accessible = approach(x1, y1, x2, y2, 'player', 'false');

            if(target_accessible) {
                // update sprite appearance
                if( dx < 0) e[playerID].sprite.setTexture('player-left');
                else if (dx > 0) e[playerID].sprite.setTexture('player-right');
                else if (dy < 0) e[playerID].sprite.setTexture('player-down');
                else if (dy > 0) e[playerID].sprite.setTexture('player-up');

                e[playerID].x = x2;
                e[playerID].y = y2;
                e[playerID].sprite.x = mapX(e[playerID].x);
                e[playerID].sprite.y = mapY(e[playerID].y);
                
                if(moves_remaining !== 99999) moves_remaining--;
                document.getElementById('movesRemaining').textContent = "⏳ " + [moves_remaining, 'unlimited'][(moves_remaining === 99999)+0];

                if(moves_remaining === 0) {
                    dead = true;
                    e[playerID].sprite.setTexture('player-dead');
                    message('messenger', "You ran out of time!");
                }

                // triggers
                triggers(x1, y1, x2, y2, 'player');
            }

            // big monster move
            if(monster){
                var freex = false, freey = false;
                var dx = e[playerID].x - e[monsterID].x;
                if(dx !== 0) freex = approach(e[monsterID].x, e[monsterID].y, e[monsterID].x + Math.sign(dx), e[monsterID].y, 'big monster');
                var dy = e[playerID].y - e[monsterID].y;
                if(dy !== 0) freey = approach(e[monsterID].x, e[monsterID].y, e[monsterID].x, e[monsterID].y + Math.sign(dy), 'big monster');
                
                var monster_decision = 'none';
                if(Math.abs(dx) > Math.abs(dy)) {  // x has priority
                    if(freex) monster_decision = 'x';
                    else if(freey) monster_decision = 'y';
                }
                else {    // y has priority
                    if(freey) monster_decision = 'y';
                    else if(freex) monster_decision = 'x';
                }

                // action move
                if( monster_decision == 'x' ) {
                    e[monsterID].x += Math.sign(dx);
                    e[monsterID].sprite.x = mapX(e[monsterID].x);
                }
                else if( monster_decision == 'y' ) {
                    e[monsterID].y += Math.sign(dy);
                    e[monsterID].sprite.y = mapY(e[monsterID].y);
                }
            }
            
            input_sleeping = true;
            var sleeptime = [150, 30][ (keydown > 0)+0 ];
            keydown++;
            sleep(sleeptime).then(() => { input_sleeping = false; });
        }
    }
}

var game = new Phaser.Game(config, 'game-area');
