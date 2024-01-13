# ARMA-REMASTERED  
Heavily modified arma 3 client to give it the feels of a modern shooter  

# V122(Jan13 2024):  
Massive fucking update! Tons of changes, graphics overhaul, 3rd-person focus, performance increase and much more
Changelogs:  
\\
Performance increased by ~35% for avg.fps thanks to the rewrite of render scale and LOD Bias for objects  
A polished and repositioned third person camera, along with Overtheshoulder aim for guns. Compatible with lasers!
Mass graphics overhaul. Now texture has its own thread for rendering and foliage is interactive. Eg: Grass gets flatted out when player step on it, or trees wiggle to the wind(weather effects coming in the next update)
Modernized controls
More cosmetics, namely FUTURA Combat glasses as mastery
\\

  


# V102(Dec27 2023):
  
Early access release! Much sooner than i anticipated but it's pretty much playable now!  
Changelog:  
Finished vaulting mechanic from v024(No more mid air hanging)  
Performance boost(~10%)  
Reworked night time lighting  
Reworked gun blowback  
Reworked muzzleflash  
Various bugfixes  
Grass/foliage elements now interacts with actors! For example you can clear a bush to make line of sight, in return of worse concealment.  
Looting system enhanced  
ACE Interactive promt  
Ragdoll!!!!!!!  
Hit/flinching animations  
Armor plating rework(Now will allow bullet penetration depends on the context(Armor type, caliber, angle,.....)  
Redesigned all movement animations! Now they look more tactical but is still WIP. The jerkiness will be fixed in later versions  
That's pretty much all, enjoy!  

  P/S: Init.sqf exposed!
```
// Function to disable stamina effects
stormender_disableStamina = {
    // Your script to disable stamina effects
};

// Function to set minimal LOD bias
stormender_minimalLOD = {
    // Your script to set minimal LOD bias
};

// Function to maximize movement fluidity and responsiveness
stormender_maximizeMovement = {
    // Your script to maximize movement
};

// Function to adjust render distance based on player proximity
stormender_adjustRenderDistance = {
    // Your script to adjust render distance
};

// Execute addon initialization functions
stormender_disableStamina player; // Disable stamina for the player character
stormender_minimalLOD player; // Set minimal LOD bias for the player character
stormender_maximizeMovement player; // Maximize movement for the player character
stormender_adjustRenderDistance player;
```


# V024(Dec25 2023):

Figured out that i want a holiday and gotta focus on my exam so i rushed the update. Everything should work fine by now.
Performance boost(10%)
Rappelling rework  
New nades mechanics 
Slight AI REWORK   
VAULTING  



# V023(DEC13):  
Major changes to general infantry gunplay and movement
Major update:  
+ Actor stamina disabled: Fatigue no longer affects gun handling or shooting, movement and vision.  
+ Minimal LODBIAS: Objects outside of player's Field of View will now render in the lowest LOD Bias available. Should improve performance on lower end rigs.  
+ Minimal rendering: Objects outside of player's Field of View will also be set to minimal rendering distance. This, in theory, should eliminate excess packages.  
~EXAMPLE:  
 ``` 
// Script to dynamically adjust object render distance based on player proximity

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
 

