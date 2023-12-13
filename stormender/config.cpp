class CfgPatches {
    class stormender {
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {};
    };
};

class CfgMovesBasic {
    class DefaultDie;
    class ManActions {
        CustomAction = "CustomAction";
    };
};

class CfgMovesMaleSdr : CfgMovesBasic {
    class States {
        class CustomAction : DefaultDie {
            speed = 1.5; // Modify movement speed
            forceAim = 1;
            looped = 0;
            headBobStrength = 0.2; // Adjust head bobbing
            headBobMode = 2;
            headBobStrengthV = 0.2;
            headBobModeV = 2;
            leftHandIKCurve[] = {0, 1, 0.02, 0, 0.98, 0, 1, 0};
            rightHandIKCurve[] = {0, 1, 0.02, 0, 0.98, 0, 1, 0};
            leftHandIKBeg = true;
            leftHandIKEnd = true;
            rightHandIKBeg = true;
            rightHandIKEnd = true;
        };
    };
};

class CfgVehicles {
    class Man;
    class CAManBase : Man {
        class HitPoints {
            class HitHead;
            class HitBody;
            class HitHands;
            class HitLegs;
        };
    };
};

class CfgWeapons {
    class Default;
    class Rifle : Default {
        class WeaponSlotsInfo {};
        class Single : Mode_SemiAuto {
            class BaseSoundModeType;
            class StandardSound : BaseSoundModeType {
                staminaCost = 0; // Set stamina cost for shooting to 0
            };
        };
    };
};

class Extended_FiredBIS_EventHandlers {
    class CAManBase {
        class stormender_disableStamina {
            firedBIS = "_this call stormender_fnc_disableStamina";
        };
    };
};

class Extended_InitPost_EventHandlers {
    class CAManBase {
        class stormender_minimalLOD {
            initPost = "_this call stormender_fnc_minimalLOD";
        };
        
        class stormender_maximizeMovement {
            initPost = "_this call stormender_fnc_maximizeMovement";
        };
    };
};

class Extended_InitPost_EventHandlers {
    class CAManBase {
        class stormender_initAddon {
            init = "call compile preprocessFileLineNumbers 'stormender\script\init.sqf'";
        };
    };
};