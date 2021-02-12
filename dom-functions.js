
// interactivity and info messaging

function message(id, msg, fun = 'killed') {
    var x = document.getElementById(id);
    var new_html = `<h4>${msg}</h4><h5>press return..</h5>`;
    x.innerHTML = new_html;
    x.style.display = "block";
    function space(){
        document.addEventListener('keydown', function(event) {
            if (event.keyCode === 13) {
                console.log('return');
                if(fun === 'killed') reset_level();
                else next_level();
            } else space();
        }, { once: true });
    }
    space();
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

    }
}

// level choice

function reset_level() {
    load_level(level_num);
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
