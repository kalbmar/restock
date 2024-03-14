#if defined _cb_constant_included
 #endinput
#endif
#define _cb_constant_included

enum WeaponType {
    WeaponType_Melee,
    WeaponType_Firearms,
    WeaponType_Bazooka,
    WeaponType_Grenade,
    WeaponType_GrenadeSmoke,
    WeaponType_GrenadeRifle,
    WeaponType_GrenadeRifleInHand
};

#define PRELOAD_YES true
#define INVALID_CLIENT 0
#define AMMO_VERSIONS_AMOUNT 3
#define AMMO_VERSION_FIRST 0
#define AMMO_VERSION_THREE 2
#define TEAM_ALIIES 2
#define PLAY_NEED_AMMO_SOUND_YES true
#define PLAY_NEED_AMMO_SOUND_NO false
#define PLAY_RESTOCK_SOUND_YES false
#define PLAY_RESTOCK_SOUND_NO true
#define WEAPON_NOT_FOUND -1
#define BULLETS_NOT_FOUND 0
#define DEFAULT_GRENADE_VALUE 1
#define WEAPON_ARRAY_LENGTH 25
#define MESSAGE_WEAPON_MELEE 0
#define MESSAGE_DEAD_PLAYER 7
#define MESSAGE_NO_CAN_USE 8
#define MESSAGE_COOLDOWN_TIME 9
#define RESTOCK_DEFAULT_VALUE 0
#define RESTOCK_SOUND "items/ammo_pickup.wav"
#define TIMER_RESTOCK_PLAYER_FLAGS TIMER_FLAG_NO_MAPCHANGE
#define TIMER_RESET 0.0
#define CONFIG_CREATE_YES true
