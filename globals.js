
// global variables

var cookies,             // retrieve any pre-existing cookie with detail of current and maximum levels
    create_this = 0,     // globalise the create() function's methods for level management
    level,               // current level
    lines,               // level's ascii definition split into lines
    level_title,         // title from ascii blob (not used)
    e = [],              // main container for element and their sprites. Top level order is preserved so n == id for e[n].id
    queue = [],          // element triggers not actioned immediately are queued
    playerID,            // e[id].id of player sprite
    portal_out,          // {x,y} object of any teleport destination 
    sound = false,       // sounds boolean
    verbose = false,     // more reporting to console.log

    // game flow variables
    speed = 30,          // delay of moving objects (lower = faster)
    input_sleeping,      // boolean for user input delay
    busy = false,        // pause everything while an element is moving
    hold = false,        // hold player's movement until all triggers complete
    dead = false,        // switch true when all activity stops after 'kill' goes true
    moves_remaining,     // running countdown
    diamonds_target,     // target = sum of diamonds and baby monsters
    diamonds_collected,  // running tally

    // DOM variables
    cursors,             // variable for cursor keys
    return_press = false,// for stationary moves
    keydown = 0,         // keypress timer
    grid = false,        // show/hide grid
    grid_array = [],     // grid array
    
    // monster variables
    big_monster,         // boolean of whether level has a big monster
    monsterID,           // e[id].id of of big monster sprite
    monster_move,        // boolean for controlling when monsters move
    baby_monsters;       // array of baby monster ids
