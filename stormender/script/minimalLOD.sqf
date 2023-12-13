// Create a new SQF file named `minimalLOD.sqf` in your addon folder
// This script keeps rendered objects at minimal LOD bias

stormender_fnc_minimalLOD = {
    params ["_unit"];
    
    // Set minimal LOD bias for objects
    _unit setViewDistance 1600; // Adjust view distance if needed
    _unit setViewGeometry 1600; // Adjust view geometry if needed
};
