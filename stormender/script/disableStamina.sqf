// Create a new SQF file named `disableStamina.sqf` in your addon folder
// This script disables stamina effects

stormender_fnc_disableStamina = {
    params ["_unit"];
    
    // Disable stamina for the unit
    _unit enableStamina false;
    _unit setCustomAimCoef 0.5; // Adjust custom aim coefficient if needed
    _unit setUnitRecoilCoefficient 0.5; // Adjust unit's recoil coefficient if needed
    
    // Example additional settings:
    // _unit setCustomAimCoef 0.7;
    // _unit setUnitRecoilCoefficient 0.7;
};
