// script with game setup and Phaser flow

var level, lines, level_title, level_moves, cursors, playerID, input_sleeping, 
    diamonds_target, diamonds_collected = 0, moves_remaining,
    portal_out = { "x": -1, "y": -1 },
    e = [],       // main container for elements and their sprites. Order is preserved so e[n].id is their array index
    queue = [],   // element triggers not actioned immediately are queued
    busy = false, // pause everything while an element is moving
    hold = false; // hold player's movement until all triggers complete
    dead = false, // true when killed
    keydown = 0,  // keypress timer
    speed = 30,   // delay of moving objects (lower = faster)
    verbose = false;

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

// build list 'e' of game elements
function parse(txt) {
    for(var i=0; i<e.length; i++) {
        if(typeof(e[i].sprite) !== 'undefined') e[i].sprite.destroy();
    }
    e = [];
    level = txt;
    lines = level.split('\n');
    level_title = lines[16];
    document.getElementById('gameLevel').textContent = level_title;
    moves_remaining = Number(lines[17]);
    if(moves_remaining === 0) moves_remaining = 99999;  // 99999 denotes unlimited moves and will not count down
    document.getElementById('movesRemaining').textContent = "⏳ " + [moves_remaining, 'unlmited'][(moves_remaining === 99999)+0];

    for(y=16; y>0; y--) {
        for(x=1; x<=40; x++) {
            var key = lines[16 - y].substr(x - 1, 1);
            var new_element = {'id': e.length, 'key': key, 'type': elements[key], 'x': x, 'y': y };
            if(typeof(elements[key]) === 'undefined') console.log('unknown element:', key);
            if(elements[key] != 'space' && elements[key] != 'portal out') e.push(new_element);
            if(elements[key] == 'portal out') portal_out = { "x": x, "y": y };
        }
    }

    diamonds_target = e.filter(i => i.type == 'diamond').length;
    document.getElementById('diamondsRemaining').textContent = "💎 " + (diamonds_target - diamonds_collected);
}


// e index position of any element at coordinates (x,y)
function id_element(x, y) {
    match = e.filter(i => i.x == x && i.y == y);
    if(match.length > 1) throw 'error in id_element(' + x + ',' + y + '): multiple elements at coordinates';
    if(match.length == 0) return -1;
    return match[0].id;
}

function kill_element(id) {
    e[id].sprite.destroy(true); // remove from canvas
    e[id].x = -1;               // prevent id_element() identifying them
}

// functions to map grid positions to canvas
function mapX (x) { return x * 20 - 20; }
function mapY (y) { return 400 - y * 25; }

//-----------------------------------------------------------------------------------

// PHASER

var config = {
    type: Phaser.AUTO,
    width: 800,
    height: 400,
    // backgroundColor: '#000',
    scene: {
        preload: preload,
        create: create,
        update: update
    }//,
    // fps: {
    //     target: 30,
    //     min: 30,
    //     forceSetTimeOut: true
    //   }
}

function preload () {
    this.load.text({ key: 'data', url: './screens/screen.1.txt' });
    // this.load.text({ key: 'data', url: './orig2/wanderer/screens/test' });
    // this.load.image('mist', 'backgrounds/mist.jpg');
    this.load.svg('diamond', 'sprites/diamond.svg', { scale: 0.43 });
    this.load.svg('add moves', 'sprites/add-moves.svg', { scale: 0.04 });
    this.load.image('boulder', 'sprites/boulder.png', { scale: 1 });
    this.load.svg('dirt', 'sprites/dirt.svg', { scale: 0.15 });
    this.load.svg('left slope', 'sprites/slope-left.svg', { scale: 0.18 });
    this.load.svg('right slope', 'sprites/slope-right.svg', { scale: 0.18 });
    this.load.svg('fire', 'sprites/fire.svg', { scale: 0.3 });
    this.load.svg('portal in', 'sprites/portal-in.svg', { scale: 0.01 });
    this.load.svg('exit', 'sprites/exit.svg', { scale: 0.25 });
    this.load.svg('left arrow', 'sprites/arrow-left.svg', { scale: 0.2 });
    this.load.svg('right arrow', 'sprites/arrow-right.svg', { scale: 0.2 });
    this.load.svg('balloon', 'sprites/balloon.svg', { scale: 0.4 });
    this.load.svg('baby monster', 'sprites/monster-baby.svg', { scale: 0.25 });
    this.load.svg('big monster', 'sprites/monster-big.svg', { scale: 0.2 });
    this.load.svg('cage', 'sprites/cage.svg', { scale: 0.2 });
    this.load.svg('bomb', 'sprites/bomb.svg', { scale: 0.4 });
    this.load.svg('player', 'sprites/player.svg', { scale: 0.17 });
    this.load.svg('player-dead', 'sprites/player-dead.svg', { scale: 0.17 });
}


function create () {
    var data = this.cache.text.get('data');
    
    parse(data)
    
    // this.add.image(400, 200, 'mist');
    var dark_wall_graphics = this.add.graphics({ fillStyle: { color: 0x777777 } });
    var light_wall_graphics = this.add.graphics({ fillStyle: { color: 0x888888 } });
    
    for(var i=0; i<e.length; i++) {
        if(e[i].type == 'dark wall') {
            e[i].sprite = new Phaser.Geom.Rectangle(mapX(e[i].x), mapY(e[i].y), 20, 25, '#000', '#000');
            dark_wall_graphics.fillRectShape(e[i].sprite);
        }
        if(e[i].type == 'light wall') {
            e[i].sprite = new Phaser.Geom.Rectangle(mapX(e[i].x), mapY(e[i].y), 20, 25, '#000', '#000');
            light_wall_graphics.fillRectShape(e[i].sprite);
        }
        if(e[i].type == 'diamond') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'diamond'); }
        if(e[i].type == 'add moves') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'add moves'); }
        if(e[i].type == 'boulder') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'boulder'); }
        if(e[i].type == 'dirt') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'dirt'); }
        if(e[i].type == 'left slope') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'left slope'); }
        if(e[i].type == 'right slope') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'right slope'); }
        if(e[i].type == 'fire') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'fire'); }
        if(e[i].type == 'portal in') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'portal in'); }
        if(e[i].type == 'exit') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'exit'); }
        if(e[i].type == 'left arrow') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'left arrow'); }
        if(e[i].type == 'right arrow') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'right arrow'); }
        if(e[i].type == 'balloon') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'balloon'); }
        if(e[i].type == 'big monster') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'big monster'); }
        if(e[i].type == 'baby monster') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'baby monster'); }
        if(e[i].type == 'cage') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'cage'); }
        if(e[i].type == 'bomb') { e[i].sprite = this.add.image(mapX(e[i].x)+10, mapY(e[i].y)+13, 'bomb'); }
        if(e[i].type == 'player') { playerID = i; }
    }
    // render player sprites last
    e[playerID].sprite = this.add.image(mapX(e[playerID].x)+10, mapY(e[playerID].y)+13, 'player');
    e[playerID].dead = this.add.image(mapX(0), mapY(0), 'player-dead');
    cursors = this.input.keyboard.createCursorKeys();
}


function update () {
    
    if(busy || dead) return;

    for(var i=0; i<queue.length; i++) {
        var q = queue[i];
        queue = queue.filter((x,ind) => ![i].includes(ind)); // remove from queue
        var moved = move(q);
        if(moved) break;
    }
    if(queue.length === 0) hold = false;

    if( !input_sleeping && !hold ) {

        if(cursors.left.isDown | cursors.right.isDown | cursors.up.isDown | cursors.down.isDown) {

            // key inputs
            var dx = 0, dy = 0, x1, y1, x2, y2;
            if (cursors.left.isDown) { dx = -1; }
            else if (cursors.right.isDown) { dx = 1; }
            else if (cursors.down.isDown) { dy = -1; }
            else if (cursors.up.isDown) { dy = 1; }

            x1 = e[playerID].x;
            y1 = e[playerID].y;
            x2 = x1 + dx;
            y2 = y1 + dy;

            var target_accessible = approach(x1, y1, x2, y2, 'player', 'false');

            if(target_accessible) {
                e[playerID].x = x2;
                e[playerID].y = y2;
                e[playerID].sprite.x = mapX(e[playerID].x) + 10;
                e[playerID].sprite.y = mapY(e[playerID].y) + 13;
                
                if(moves_remaining !== 99999) moves_remaining--;
                document.getElementById('movesRemaining').textContent = "⏳ " + [moves_remaining, 'No limit'][(moves_remaining === 99999)+0];

                if(moves_remaining === 0) {
                    dead = true;
                    e[playerID].dead.x = e[playerID].sprite.x;
                    e[playerID].dead.y = e[playerID].sprite.y;
                    e[playerID].sprite.x = mapX(0);
                    e[playerID].sprite.y = mapY(0);
                    message('messenger', "You ran out of time!");
                }

                // triggers
                triggers(x1, y1, x2, y2, 'player');
            }
            
            input_sleeping = true;
            var sleeptime = [150, 30][ (keydown > 0)+0 ];
            keydown++;
            sleep(sleeptime).then(() => { input_sleeping = false; });
        }
    }
}

var game = new Phaser.Game(config);
