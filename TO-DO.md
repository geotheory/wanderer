
# TO DO:

## Game play

- move to recursive logic for triggering of some object interactions. More distant interactions are queued?
    - arrows passing directly underneath boulders trip immediately (recursively)
- prioritise right arrows over left arrows when both tripped by removing edible element between them
- boulders triggered before arrows?
- boulder rules for trigger prioritisation
- implement monsters
    - big monsters chase
    - baby monsters follow maze left?
- remove queued elements that are unable to move  - e.g. after a period?

## Style

- svg boulder
- directional player eyes

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