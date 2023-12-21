# ARMA-REMASTERED  
Heavily modified arma 3 client to give it the feels of a modern shooter  

# V024(Jan1 2024):
Rappelling rework  -Done
New nades mechanics  -Testing
Slight AI REWORK   -Testing
VAULTING  -Done



# V023(DEC13):  
Major changes to general infantry gunplay and movement
Major update:  
+ Actor stamina disabled: Fatigue no longer affects gun handling or shooting, movement and vision.  
+ Minimal LODBIAS: Objects outside of player's Field of View will now render in the lowest LOD Bias available. Should improve performance on lower end rigs.  
+ Minimal rendering: Objects outside of player's Field of View will also be set to minimal rendering distance. This, in theory, should eliminate excess packages.  
~EXAMPLE:  
 ``` // Script to dynamically adjust object render distance based on player proximity

// Get the player's position
_playerPos = getPos player;

// Define the reduced render distance threshold
reducedRenderDistance = 500; // Set the reduced render distance

// Iterate through objects and check their distance from the player
{
    // Check distance between player and object
    _distance = _playerPos distance _x;
    // Reduce render distance for objects outside the reducedRenderDistance
    if (_distance > reducedRenderDistance) then {
        _x setViewDistance reducedRenderDistance; // Set reduced render distance for the object
    } else {
        // Set regular render distance for objects within reducedRenderDistance
        _x setViewDistance 3000; // Set your regular render distance here
    }
} forEach allMissionObjects "";
```
//

# V022(NOV30):  
Already committing big changes to the clientside including Tac Sprint, Tac Stance, more fluid movement by reducing input lag and actor momentum  
 

