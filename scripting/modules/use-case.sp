void UseCase_Firearms(int client, int ammoType, bool isNoAmmo, WeaponType weaponType) {
    if (isNoAmmo) {
        int ammoAmount = Weapon_GetAmmoAmount(ammoType);

        Timer_SetToRestock(client);
        Message_RestocketAmmo(client, weaponType, ammoAmount);
        UseCase_GiveAmmo(client, ammoAmount, ammoType);
    }
}

void UseCase_Grenade(int client, int ammoType, bool isNoAmmoGrenade, WeaponType weaponType) {
    if (isNoAmmoGrenade) {
        int ammoAmount = Weapon_GetAmmoAmount(ammoType);

        Timer_SetToRestock(client);
        Message_RestocketAmmo(client, weaponType, ammoAmount);
        UseCase_GiveAmmo(client, ammoAmount, ammoType);
    }
}

void UseCase_GrenadeRifle(int client, int ammoType, bool isNoAmmoGrenadeRifle, WeaponType weaponType) {
    if (isNoAmmoGrenadeRifle) {
        int ammoAmount = Weapon_GetAmmoAmount(ammoType);

        Timer_SetToRestock(client);
        Message_RestocketAmmo(client, weaponType, ammoAmount);
        UseCase_GiveAmmo(client, ammoAmount, ammoType);
    }
}

void UseCase_GrenadeRifleInHand(int client, int ammoType, bool isNoAmmoGrenade, WeaponType weaponType) {
    if (isNoAmmoGrenade) {
        char grenadeClassName[GRENADE_NAME_LENGTH];
        int team = GetClientTeam(client);
        int grenadeIndex = team - TEAM_ALIIES;
        int ammoAmount = Weapon_GetAmmoAmount(ammoType);
        
        Weapon_GetGrenadeRifleName(grenadeClassName, grenadeIndex);
        Timer_SetToRestock(client);
        Message_RestocketAmmo(client, weaponType, ammoAmount);
        GivePlayerItem(client, grenadeClassName);
        Sound_EmitToClient(client);
    }
}

void UseCase_GiveAmmo(int client, int ammoAmount, int ammoType) {
    GivePlayerAmmo(client, ammoAmount, ammoType, PLAY_RESTOCK_SOUND_YES);
}
