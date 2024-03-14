char g_grenadeRifle[][] = {
    "weapon_riflegren_us",
    "weapon_riflegren_ger"
};

char g_messageRestockAmmo[][] = {
    "Melee weapon",
    "Firearms weapon",
    "Bazooka weapon",
    "Grenade",
    "Grenade smoke",
    "Grenade rifle",
    "Grenade rifle",
    "Dead player",
    "No can use",
    "Cooldown time"
};


WeaponType g_weaponType[] = {
    WeaponType_Melee,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Firearms,
    WeaponType_Bazooka,
    WeaponType_Grenade,
    WeaponType_Grenade,
    WeaponType_Melee,
    WeaponType_Melee,
    WeaponType_GrenadeSmoke,
    WeaponType_GrenadeSmoke,
    WeaponType_Melee,
    WeaponType_Melee,
    WeaponType_GrenadeRifle,
    WeaponType_GrenadeRifle,
    WeaponType_GrenadeRifleInHand,
    WeaponType_GrenadeRifleInHand
};

char g_ammoSounds[][] = {
    "player/american/us_needammo.wav",
    "player/american/us_needammo2.wav",
    "player/american/us_needammo3.wav",
    "player/german/ger_needammo.wav",
    "player/german/ger_needammo2.wav",
    "player/german/ger_needammo3.wav"
};

int g_weaponAmmoArray [WEAPON_ARRAY_LENGTH] = {0, 14, 16, 40, 80, 60, 30, 50, 180, 240, 300, 250, 4, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0};
int g_isPlayerRestocked[MAXPLAYERS + 1] = {RESTOCK_DEFAULT_VALUE, ...};
float g_secondToUse[MAXPLAYERS + 1];

Handle g_timerToNextUseResrock[MAXPLAYERS + 1];

ConVar g_restockMaxUses = null;
ConVar g_delayUsesBetweenRestock = null;
