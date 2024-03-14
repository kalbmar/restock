void UseCase_Firearms(int client, int ammoType, bool isNoAmmo, WeaponType weaponType) {
    if (isNoAmmo) {
        Timer_SetToRestock(client);
        Message_RestocketAmmo(client, ammoType,  weaponType);
        UseCase_GiveAmmo(client, ammoType);
    }
}

void UseCase_Grenade(int client, int ammoType, bool isNoAmmoGrenade, WeaponType weaponType) {
    if (isNoAmmoGrenade) {
        Timer_SetToRestock(client);
        Message_RestocketAmmo(client, ammoType,  weaponType);
        UseCase_GiveAmmo(client, ammoType);
    }
}

void UseCase_GrenadeRifle(int client, int ammoType, bool isNoAmmoGrenadeRifle, WeaponType weaponType) {
    if (isNoAmmoGrenadeRifle) {
        Timer_SetToRestock(client);
        Message_RestocketAmmo(client, ammoType,  weaponType);
        UseCase_GiveAmmo(client, ammoType);
    }
}

void UseCase_GrenadeRifleInHand(int client, int ammoType, bool isNoAmmoGrenade, WeaponType weaponType) {
    if (isNoAmmoGrenade) {
        int team = Client_GetTeam(client);
        int grenade = team - TEAM_ALIIES;

        Timer_SetToRestock(client);
        Message_RestocketAmmo(client, ammoType,  weaponType);
        GivePlayerItem(client, g_grenadeRifle[grenade]);
        Sound_EmitToClient(client);
    }
}

void UseCase_GiveAmmo(int client, int ammoType) {
    GivePlayerAmmo(client, g_weaponAmmoArray[ammoType], ammoType, PLAY_RESTOCK_SOUND_YES);
}
