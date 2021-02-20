
var menu_level = document.getElementById('gameLevel');
var menu_level_html = '';
for(var i=1; i<50; i++) menu_level_html += `<option class="level-option" value="${i}">Level ${i}</option>`;
menu_level.innerHTML = menu_level_html;

menu_level.onchange = function(){
    level_num = Number(menu_level.value);
    reset_level();
}


// interactivity and info messaging

function msg_fun(){ return; }

function message(id, msg, fun = 'killed') {
    hold_dead = true;
    var dialogue = document.getElementById(id);
    var new_html = `<h4>${msg}</h4><h5>tap or press return..</h5>`;
    dialogue.innerHTML = new_html;
    dialogue.style.display = "block";
    
    // if (fun === 'killed') msg_fun = reset_level;
    // else if (fun === 'exit blocked'){
    //     msg_fun = function(){
    //         hold_dead = false;
    //         document.getElementById('messenger').style.display='none';
    //     }
    // }
    // else msg_fun = next_level;

    switch(fun){
        // reassign msg_fun() - called when the dialogue closes - to appropriate action

        case 'killed':
            msg_fun = reset_level;
            break;

        case 'exit blocked':
            msg_fun = function(){
                hold_dead = false;
                document.getElementById('messenger').style.display='none';
            };
            break;

        case 'long press':
            console.log('long press');
            break;

        case 'next':
            msg_fun = next_level;
            break;

        default:
            console.log('message() called but case unknown');
            break;
    }
    
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
                    case 'long press':
                        reset_level();
                        break;
                    case 'next':
                        next_level();
                    default:
                        console.log('enter pressed but case unknown');
                }
            } else enter();
        }, { once: true });
    }
    enter();
}


onclick="reset_level()"




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
    console.log( Math.round(ev.velocityX*100)/100, Math.round(ev.velocityY*100)/100 );
    g.x += ev.velocityX;
    g.y += ev.velocityY;
    if(Math.abs(g.x) > 1 | Math.abs(g.y) > 1){  // adjust for touchscreen gesture sensitivity
        if(Math.abs(g.x) > Math.abs(g.y)) { swipeX = Math.sign(g.x); }
        else { swipeY = Math.sign(g.y); }
        g = {"x": 0, "y": 0 }; 
    }
});

hammertime.add( new Hammer.Press({ time: 750 }) );

hammertime.on('press', function(e) {
    msg_fun = reset_level;
    message('messenger', 'Reload level?', 'long press');
});

hammertime.on('tap', function(e) {
    tap = true;
});

function toggle_grid(){//}
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
