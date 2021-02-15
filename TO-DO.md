
# TO DO:

## Game play

- separate boulder queue?
- move to recursive logic for triggering of some object interactions. More distant interactions are queued?
    - arrows passing directly underneath boulders trip immediately (recursively)
- boulder rules for trigger prioritisation
- monsters
    - how to handle 'push' into cells occupied by just a baby monster?

## Style

- better monsters
- mobile handling


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
