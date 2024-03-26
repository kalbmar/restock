#if defined _restock_weapon_included
 #endinput
#endif
#define _restock_weapon_included

enum WeaponType {
    WeaponType_Melee,
    WeaponType_Firearms,
    WeaponType_Bazooka,
    WeaponType_Grenade,
    WeaponType_GrenadeSmoke,
    WeaponType_GrenadeRifle,
    WeaponType_GrenadeRifleInHand
};

#define BULLETS_NOT_FOUND 0
#define DEFAULT_GRENADE_VALUE 1
#define WEAPON_ARRAY_LENGTH 25
#define MESSAGE_WEAPON_MELEE 0
