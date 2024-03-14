void Weapon_Define(int client, int activeWeapon) {
    int ammoType = Weapon_GetAmmoType(activeWeapon);

    if (ammoType == WEAPON_NOT_FOUND) {
        Message_RestockProhibited(client, MESSAGE_WEAPON_MELEE);
    
        return;
    }

    int bulletsInWeapon = Weapon_BulletsInWeapon(activeWeapon);
    int bulletsInClip = Weapon_BulletsInClip(client, ammoType);
    bool isNoAmmo = Weapon_IsNoAmmo(bulletsInWeapon, bulletsInClip);
    bool isNoAmmoGrenade = Weapon_IsNoAmmoGrenade(bulletsInClip);
    bool isNoAmmoGrenadeRifle = Weapon_IsNoAmmoGrenadeRifle(bulletsInClip);
    WeaponType weaponType = Weapon_GetType(ammoType);
	
    switch(weaponType) {
        case WeaponType_Firearms, WeaponType_Bazooka: {
            UseCase_Firearms(client, ammoType, isNoAmmo, weaponType);
        }
        
        case WeaponType_Grenade, WeaponType_GrenadeSmoke: {
            UseCase_Grenade(client, ammoType, isNoAmmoGrenade, weaponType);
        }
        
        case WeaponType_GrenadeRifle: {
            UseCase_GrenadeRifle(client, ammoType, isNoAmmoGrenadeRifle, weaponType);
        }
        
        case WeaponType_GrenadeRifleInHand: {
            UseCase_GrenadeRifleInHand(client, ammoType, isNoAmmoGrenade, weaponType);
        }
    }
}

bool Weapon_IsNoAmmo(int bulletsInWeapon, int bulletsInClip) {
    int currentAmmo = bulletsInWeapon + bulletsInClip;

    if (currentAmmo == BULLETS_NOT_FOUND) {
        return true;
    }

    return false;
}

bool Weapon_IsNoAmmoGrenade(int bulletsInClip) {
    if (bulletsInClip == DEFAULT_GRENADE_VALUE) {
        return true;
    }

    return false;
}

bool Weapon_IsNoAmmoGrenadeRifle(int bulletsInClip) {
    int currentAmmoGrenadeRifle = bulletsInClip + DEFAULT_GRENADE_VALUE;

    if (currentAmmoGrenadeRifle == DEFAULT_GRENADE_VALUE) {
        return true;
    }

    return false;
}

int Weapon_BulletsInWeapon(int weapon) {
    return GetEntProp(weapon, Prop_Send, "m_iClip1");
}

int Weapon_BulletsInClip(int client, int ammoType) {
    return GetEntProp(client, Prop_Send, "m_iAmmo", _, ammoType);
}

int Weapon_GetAmmoType(int activeWeapon) {
    return GetEntProp(activeWeapon, Prop_Send, "m_iPrimaryAmmoType");
}

WeaponType Weapon_GetType(int ammoType) {
    return g_weaponType[ammoType];
}
