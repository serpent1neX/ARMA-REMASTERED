// Script to maximize character movement fluidity and responsiveness

// Function to adjust movement parameters for maximum fluidity
stormender_fnc_maximizeMovement = {
    params ["_unit"];
    
    // Adjust animation blend and movement inertia parameters for maximum fluidity and responsiveness
    _unit forceWalk = 0.05; // Adjust the forceWalk parameter for more responsive walking
    _unit forceRun = 0.1; // Adjust the forceRun parameter for more responsive running
    _unit forceRunFast = 0.15; // Adjust the forceRunFast parameter for more responsive fast running
    _unit forceCrouch = 0.02; // Adjust the forceCrouch parameter for more responsive crouching
    
    // Adjust animation blend values for smoother animation transitions 
    // For example:
    // _unit setCustomAimCoef 0.7; // Adjust custom aim coefficient for better aiming animation blend
    // _unit setUnitRecoilCoefficient 0.7; // Adjust unit's recoil coefficient for better recoil animation blend
    
    // Set animation speed or other related parameters if needed
    // For example:
    // _unit setAnimSpeedCoef 2.0; // Adjust animation speed coefficient for smoother animation playback
};
