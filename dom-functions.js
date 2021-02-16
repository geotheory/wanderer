
var menu_level = document.getElementById('gameLevel');
var menu_level_html = '';
for(var i=1; i<50; i++) menu_level_html += `<option class="level-choice" value="${i}">${i}</option>`;
menu_level.innerHTML = menu_level_html;

menu_level.onchange = function(){
    level_num = Number(menu_level.value);
    reset_level();
}


// interactivity and info messaging

function message(id, msg, fun = 'killed') {
    hold_dead = true;
    var x = document.getElementById(id);
    var new_html = `<h4>${msg}</h4><h5>press return..</h5>`;
    x.innerHTML = new_html;
    x.style.display = "block";
    function enter(){
        document.addEventListener('keydown', function(event) {
            if (event.keyCode === 13) {
                if(fun === 'killed') reset_level();
                else next_level();
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

// var containerElement = document.getElementById('game-area');
// var activeRegion = ZingTouch.Region(containerElement);

// var childElement = document.getElementById('game-area');
// activeRegion.bind(childElement, 'pan', function(event){
// 	//Perform Operations
// });

var swipeX = 0, 
    swipeY = 0,
    g = {"x": 0, "y": 0 },
    region = new ZingTouch.Region(document.getElementById('game-area')),
    target = document.getElementById('game-area');

region.bind(target, 'pan', function(e){
    g.x += e.detail.data[0].change.x;
    g.y += e.detail.data[0].change.y;
    if(Math.abs(g.x) > 5 | Math.abs(g.y) > 5){
        if(Math.abs(g.x) > Math.abs(g.y)) { swipeX = Math.sign(g.x); }
        else { swipeY = Math.sign(g.y); }
    }
    // cancel after 30ms
    sleep(60).then(() => {
        g = {"x": 0, "y": 0 }; 
        swipeX = 0;
        swipeY = 0;
    });
})


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
    }
    else  {
        grid_array.map( x => x.destroy() );
        grid_array = [];
    }
}
