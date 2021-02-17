
var menu_level = document.getElementById('gameLevel');
var menu_level_html = '';
for(var i=1; i<50; i++) menu_level_html += `<option class="level-option" value="${i}">Level ${i}</option>`;
menu_level.innerHTML = menu_level_html;

menu_level.onchange = function(){
    level_num = Number(menu_level.value);
    reset_level();
}


// interactivity and info messaging

function message(id, msg, fun = 'killed') {
    hold_dead = true;
    var x = document.getElementById(id);
    var new_html = `<h4>${msg}</h4><h5>tap or press return..</h5>`;
    x.innerHTML = new_html;
    x.style.display = "block";
    function enter(){
        document.addEventListener('keydown', function(event) {
            if (event.keyCode === 13) {

                switch(fun){
                    case 'killed':
                        reset_level();
                        break;
                    case 'exit blocked':
                        hold_dead = false;
                        document.getElementById('messenger').style.display='none';
                        break;
                    default:
                        next_level();
                }

            } else enter();
        }, { once: true });
    }
    enter();
}

document.onkeyup = function(event) {

    switch(event.keyCode){

        // arrow keys
        case 37:
        case 38:
        case 39:
        case 40:
            keydown = 0;
            return;
        
        case 32: // spacebar always resets
            reset_level();
            return;

        case 16: // return/enter - stationary move
            return_press = true;
            return;
        
        case 71: // g - grid
            toggle_grid();
            return;
    }
}

// level choice

function reset_level() {
    queue = [];
    dead = true;
    busy = false; // to pause monsters
    document.getElementById('messenger').style.display='none';
    menu_level.value = String(level_num);
}

function next_level() {
    level_num++;
    reset_level()
    saveCookie('current_level', level_num);
    if(level_num > cookies.max_level) saveCookie('max_level', level_num)
}

// cookies

function readCookie() {
    var cookie = {};
    var cookie_array = document.cookie.split(';');
    for(var i=0; i<cookie_array.length; i++) {
        cookie_arg = cookie_array[i].split('=');
        cookie[cookie_arg[0].trim()] = cookie_arg[1];
    }
    return cookie;
}

function saveCookie(c_name, c_value, exdays=30) {
    var exdate=new Date();
    exdate.setDate(exdate.getDate() + exdays);
    document.cookie=encodeURIComponent(c_name) 
        + "=" + encodeURIComponent(c_value)
        + (!exdays ? "" : "; expires="+exdate.toUTCString())
        + "; path=/";
}

var cookies = readCookie();
var level_max, level_num;
if(cookies.max_level === undefined) level_max = 1;
else level_max = cookies.max_level;
if(cookies.current_level === undefined) level_num = 1;
else level_num = cookies.current_level;
menu_level.value = String(level_num);

// swipe for mobiles

var swipeX = 0, swipeY = 0;
var g = {"x": 0, "y": 0 }
var target = document.getElementById('game-area');
var hammertime = new Hammer(target, { velocity: 0.1, threshold: 0 });

hammertime.on('pan', function(ev) {
    g.x += ev.velocityX;
    g.y += ev.velocityY  * 2;
    if(Math.abs(g.x) > 1 | Math.abs(g.y) > 1){  // adjust for touchscreen gesture sensitivity
        if(Math.abs(g.x) > Math.abs(g.y)) { swipeX = Math.sign(g.x); }
        else { swipeY = Math.sign(g.y); }
        g = {"x": 0, "y": 0 }; 
    }
});

hammertime.add( new Hammer.Press({ time: 750 }) );

hammertime.on('press', function(e) {
    console.log('long press');
});


function toggle_grid(){
    grid = !grid;
    if(grid){
        var x1, x2;
        for(var i=1; i<=40; i++) {
            x1 = create_this.add.text(mapX(i)-10, mapY(1)-5, i, { "size": 5, color: 'yellow' });
            x2 = create_this.add.text(mapX(i)-10, mapY(16)-5, i, { "size": 5, color: 'yellow' });
            grid_array.push(x1); grid_array.push(x2);
        }
        for(var i=1; i<=16; i++) {
            x1 = create_this.add.text(mapX(1)-10, mapY(i)-5, i, { color: 'yellow' });
            x2 = create_this.add.text(mapX(40)-10, mapY(i)-5, i, { color: 'yellow' });
            grid_array.push(x1); grid_array.push(x2);
        }
        var game_dims = String(document.getElementById('game-panel').offsetWidth) + ' x ' +
                        String(document.getElementById('game-panel').offsetHeight);
        var screen_dims = String(window.innerWidth) + ' x ' + String(window.innerHeight);
        x1 = create_this.add.text(mapX(20), mapY(10), game_dims, { color: 'yellow' });
        x2 = create_this.add.text(mapX(20), mapY(8), screen_dims, { color: 'yellow' });
        grid_array.push(x1); grid_array.push(x2);
    }
    else  {
        grid_array.map( x => x.destroy() );
        grid_array = [];
    }
}
