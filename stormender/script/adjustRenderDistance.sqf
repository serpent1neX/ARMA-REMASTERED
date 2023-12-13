// Create a new SQF file named `adjustRenderDistance.sqf` in your addon's script folder
// This script adjusts the render distance for objects based on player proximity

stormender_fnc_adjustRenderDistance = {
    params ["_vehicle"];
    
    // Get the player's position
    _playerPos = getPos player;
    
    // Define the reduced render distance threshold
    reducedRenderDistance = 500; // Set the reduced render distance
    
    // Check distance between player and object
    _distance = _playerPos distance _vehicle;
    
    // Reduce render distance for objects outside the reducedRenderDistance
    if (_distance > reducedRenderDistance) then {
        _vehicle setViewDistance reducedRenderDistance; // Set reduced render distance for the object
    } else {
        // Set regular render distance for objects within reducedRenderDistance
        _vehicle setViewDistance 3000; // Set your regular render distance here
    }
};
