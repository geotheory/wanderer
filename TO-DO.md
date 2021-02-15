
# TO DO:

## Game play

- separate boulder queue?
- move to recursive logic for triggering of some object interactions. More distant interactions are queued?
    - arrows passing directly underneath boulders trip immediately (recursively)
- boulder rules for trigger prioritisation
- monsters
    - monsters to trigger things
    - how to handle 'push' into cells occupied by just a baby monster?


## Style

- better monsters
- mobile handling

## NOW

- check all usages of id_element() check for redundancies
- how to update id_element to handle all cases of intersecting elements
    - implement approacher type arg?
- fix reset
- reset waits for current move to finish


## busy - pause other elements moving
- stop update() running while true
- true while move() active
- false when move() stops because approach() returned false

## hold - pause user inputs
- busy = true;  // pause other elements
- hold = true;  // pause user inputs


## DEAD FLOW
1. approach() identifies death event - calls `message(fun = 'killed)`
2. 






















-------------------------------------------------------------


{ "    O  Boulder",
"  < >  Arrows",
"    ^  Balloon",
"    :  Earth",
"    !  Landmine",
"    *  Treasure",
"  / \\  Deflectors",
"    +  Cage",
"_ = #  Rock (# indestructable)",
"    T  Teleport",
"    A  Arrival (1 max)",
"    X  Exit (always 1)",
"    @  Start (always 1)",
"    M  Big Monster (1 max)",
"    S  Baby Monster",
"    -  Alternative space",
"    C  Time Capsule",
"    ~  Thingy",
"    B  Bomb",
NULL }
