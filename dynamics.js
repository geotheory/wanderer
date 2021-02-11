
// Two functions approach() and move() and the rules for direct object interactions (not remote triggers)

// Rules for interactions. Tree structured:
//
// - L1: class of current static occupant of coordinates (x,y)
//   - L2: direction of approach of moving element
//     - L3: class of moving element entering the cell
//       - L4: outcome

var rules = {
    "player": {
        "top": { "boulder": "killed", "big monster": "killed" },
        "side": { "boulder": "no", "right arrow": "killed", "left arrow": "killed", "big monster": "killed" },
        "bottom": { "balloon": "no", "big monster": "killed" },
    },
    
    // edible (non-directional)
    "diamond": { "any":{ "player": "eat", "other": "no" } },
    "dirt": { "any":{ "player": "eat", "other": "no" } },
    "add moves": { "any":{ "player": "eat", "other": "no" } },
    
    // static (non-directional)
    "dark wall": { "any":{ "any": "no" } },
    "light wall": { "any":{ "any": "no" } },
    "left slope": { "any": { "player": "no", "other": "deflect" } },
    "right slope": { "any": { "player": "no", "other": "deflect" } },
    "fire": { "any": { "player": "killed", "other": "no" } },
    "portal in": { "any": { "player": "teleport", "other": "no" } },
    "exit": { "any": { "player": "exit", "other": "no" } },
    
    // dynamic
    "left arrow": {
        "side": { "any": "no" },
        "top": { "player": "push", "other": "no" },
        "bottom": { "player": "push", "other": "no" }
    },
    "right arrow": {
        "side": { "any": "no" },
        "top": { "player": "push", "other": "no" },
        "bottom": { "player": "push", "other": "no" }
    },
    "boulder": {
        "side": { "player": "push", "other": "deflect" },
        "top": { "boulder": "deflect", "other": "no" },
        "bottom": { "any": "no" }
    },
    "balloon": {
        "side": {
            "player": "push", 
            "right arrow": "eat",
            "left arrow": "eat",
            "other": "no"
        },
        "top": { "any": "no" },
        "bottom": { "any": "no" }
    },
    "big monster": {
        "any": {
            "player": "killed",
            "left arrow": "eat",
            "right arrow": "eat",
            "boulder": "no",
            "balloon": "no"
        }
    }
}


// manage the logic of any object moving from one grid cell to another

function approach(x1, y1, x2, y2, approacher, deadly) {
    
    if(x2 < 1 || x2 > 40 || y2 < 1 || y2 > 16) return false;  // edge of canvas
    // if(verbose) console.log( `approach ${x1}, ${y1}, ${x2}, ${y2}, ${approacher}` );

    var occupant_id = id_element(x2, y2);
    if(occupant_id === -1) return true;
    
    var occupant_type = e[occupant_id].type;
    var top_branch = rules[occupant_type];
    var top_branch_keys = Object.keys(top_branch);
    var mid_branch, rule;
    
    // direction
    if( top_branch_keys.indexOf("any") > -1 ) {
        mid_branch = top_branch["any"];
    }
    else {
        var dir;
        if(x1 !== x2) {
            dir = 'side';
        }
        else if(y1 > y2) {
            dir = 'top';
        }
        else dir = 'bottom';
        mid_branch = top_branch[dir];
    }
    mid_branch_keys = Object.keys(mid_branch);
    if( mid_branch_keys.indexOf(approacher) > -1 ) {
        rule = mid_branch[approacher];
    } else rule = mid_branch["other"];

    switch(rule) {

        case 'no':
            return false;

        case 'eat':
            if(occupant_type === 'diamond') {
                diamonds_collected ++;
                document.getElementById('diamondsRemaining').textContent = "💎 " + (diamonds_target - diamonds_collected);
                if(sound) create_this.sound.play('sound-diamond');
            }
            else if(occupant_type === 'add moves') moves_remaining += 250;
            else if(sound && occupant_type === 'dirt') create_this.sound.play('sound-tick');
            kill_element(occupant_id);
            return true;
        
        case 'teleport':
            kill_element(id_element(portal_out.x, portal_out.y)); // eat anything at portal out
            e[playerID].x = portal_out.x;
            e[playerID].y = portal_out.y;
            kill_element(occupant_id); // remove teleporter from screen
            e[playerID].sprite.x = mapX(e[playerID].x);
            e[playerID].sprite.y = mapY(e[playerID].y);
            triggers(x2, y2, portal_out.x, portal_out.y, type = 'player');
            if(sound) create_this.sound.play('sound-teleport');
            return false;

        case 'killed':
            if(!deadly) return false; // could break stuff??
            dead = true;
            e[playerID].sprite.setTexture('player-dead');
    
            if(approacher == 'boulder'){
                message('messenger', "Killed by a falling boulder!");
                if(sound) create_this.sound.play('sound-boulder-killed');
            }
            else if(['left arrow', 'right arrow'].indexOf(approacher) >  -1) {
                message('messenger', 'Killed by a speeding arrow!');
                if(sound) create_this.sound.play('sound-arrow');
            }
            else if(approacher == 'player') {
                if(occupant_type == 'fire') {
                    message('messenger', "You were killed by an exploding landmine!");
                    if(sound) create_this.sound.play('sound-fire');
                }
                else if(occupant_type == 'big monster') {
                    message('messenger', "You were killed by a hungry monster!");
                }
            } 
            else if(approacher == 'big monster') {
                message('messenger', "You were killed by a hungry monster!");
            }
            else message('messenger', "Unknown cause of death please investigate");
            return false;

        case 'exit':
            if(diamonds_collected == diamonds_target) {
                message('messenger', 'Level complete!', 'next');
                return true;
            } else return false;

        case 'push':
            var dx = x2 - x1;
            var dy = y2 - y1;
            var x3 = x2 + dx;
            var y3 = y2 + dy;
            if(x3 < 1 || x3 > 40 || y3 < 1 || y3 > 16) return false;
            push_cell = id_element(x3, y3);
            if(push_cell >= 0) return false;
            e[occupant_id].x = x3;
            e[occupant_id].y = y3;
            e[occupant_id].sprite.x = mapX(x3);
            e[occupant_id].sprite.y = mapY(y3);
            if(verbose) console.log(`added ${occupant_id} to queue 1`);
            if(queue.indexOf(occupant_id) === -1) queue.push(occupant_id);  // once pushed an object becomes mobile
            // move(occupant_id, occupant_type); // once pushed an object becomes mobile
            return true;
         
        case 'deflect':
            approacher_id = id_element(x1, y1);

            switch(approacher) {

                case 'boulder':
                    // left deflection
                    if(id_element(x2 - 1, y2 + 1) === -1 &&   // top left cell empty
                    id_element(x2 - 1, y2) === -1 &&       // left cell empty
                    x2 - 1 >= 1 &&                         // not off canvas
                    occupant_type !== 'right slope') {
                        return (x2 - 1) + ',' + y2;
                    }
                    // right deflection
                    else if(id_element(x2 + 1, y2 + 1) === -1 &&  // top right cell empty
                            id_element(x2 + 1, y2) === -1 &&      // right cell empty
                            x2 + 1 <= 40 && 
                            occupant_type !== 'left slope') {
                        return (x2 + 1) + ',' + y2;
                    }
                    break;

                case 'right arrow':
                    // up deflection
                    if( id_element(x1, y1 + 1) === -1 &&      // top cell empty
                        id_element(x2, y1 + 1) === -1 &&      // top right empty
                        y2 < 16 &&                            // not off canvas
                        occupant_type !== 'right slope') {
                            return x2 + ',' + (y2 + 1)
                        }
                    // down deflection
                    else if(id_element(x1, y2 - 1) === -1 &&  // bottom cell empty
                            id_element(x2, y2 - 1) === -1 &&  // bottom right empty
                            y2 > 1 &&                         // not off canvas
                            occupant_type === 'right slope') {
                                return x2 + ',' + (y2 - 1);
                            }
                    break;

                case 'left arrow':
                    // up deflection
                    if( id_element(x1, y1 + 1) === -1 &&      // top cell empty
                        id_element(x2, y1 + 1) === -1 &&      // top left empty
                        y2 < 16 &&                            // not off canvas
                        occupant_type !== 'left slope') {
                            return x2 + ',' + (y2 + 1);
                        }
                    // down deflection
                    else if(id_element(x1, y1 - 1) === -1 &&  // bottom cell empty
                            id_element(x2, y1 - 1) === -1 &&  // bottom left empty
                            y2 > 1 &&                         // not off canvas
                            occupant_type === 'left slope') {
                                return x2 + ',' + (y2 - 1);
                            }
                    break;

                case 'balloon':
                    // left deflection
                    if( id_element(x2 - 1, y2) === -1 &&      // top left cell empty
                        id_element(x2 - 1, y1) === -1 &&      // left cell empty
                        x2 - 1 >= 1 &&                        // not off canvas
                        occupant_type === 'right slope') {
                            return (x2 - 1) + ',' + y2;
                        }
                    // right deflection
                    else if(id_element(x2 + 1, y2) === -1 &&  // top right cell empty
                            id_element(x2 + 1, y1) === -1 &&  // right cell empty
                            x2 + 1 <= 40 &&
                            occupant_type === 'left slope') {
                                return (x2 + 1) + ',' + y2;
                            }
                    break;
            } // end approacher switch

            return false;

    } // end rule switch
}

//----------------------------------------------------------------------------------

// dynamic logic for mobile elements

function move(id, type = '', deadly = false) {
    busy = true;  // pause other elements
    hold = true;  // pause user inputs
    if(verbose) console.log('move ' + String(id));
    if(type === '') type = e[id].type;
    
    // which way will the element move
    var dx, dy;
    if(type === 'boulder') { dx = 0; dy = -1; }
    if(type === 'left arrow') { dx = -1; dy = 0; }
    if(type === 'right arrow') { dx = 1; dy = 0; }
    if(type === 'balloon') { dx = 0; dy = 1; }
    var x1 = e[id].x;
    var y1 = e[id].y;
    if(verbose) console.log( `    ${x1},${y1}` );
    
    // check if it's possible to move to the target cell. For deflections approach()
    // will report false and handle the movement itself
    var target_accessible = approach(x1, y1, x1 + dx, y1 + dy, type, deadly);

    if(target_accessible) {
        if(target_accessible === true) { // move to target
            e[id].x = x1 + dx;
            e[id].y = y1 + dy;
        }
        else {  // deflected so target_accessible are new coordinates
            if(verbose) console.log('deflected');
            var xy = target_accessible.split(',').map(x => x * 1);
            e[id].x = xy[0];
            e[id].y = xy[1];
        }
        e[id].sprite.x = mapX(e[id].x);
        e[id].sprite.y = mapY(e[id].y);
        
        // triggers
        triggers(x1, y1, e[id].x, e[id].y, type);
        sleep(speed).then(() => { move(id, type, true); });
        return true;  // so queue handler knows if a movement took place
    } else {
        busy = false;
        if(verbose) console.log( `end move ${id}` );
        return false
    }
}
