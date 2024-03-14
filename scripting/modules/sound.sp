void Sound_Precache() {
    for (int i = 0; i < sizeof(g_ammoSounds); i++) {
        PrecacheSound(g_ammoSounds[i], PRELOAD_YES);
    }

    PrecacheSound(RESTOCK_SOUND, PRELOAD_YES);
}

void Sound_PlayVoiceAskAmmo(int soundOffset, int client) {
    EmitSoundToAll(g_ammoSounds[soundOffset], client, SNDCHAN_VOICE, SNDLEVEL_NORMAL);
}

void Sound_EmitToClient(int client) {
    EmitSoundToClient(client, RESTOCK_SOUND, client, SNDCHAN_VOICE, SNDLEVEL_CAR);
}

void Sound_PlayAmmo(int client, bool playSound) {
    int team = Client_GetTeam(client);
    int ammoVersion = GetRandomInt(AMMO_VERSION_FIRST, AMMO_VERSION_THREE);
    int soundOffset = (team - TEAM_ALIIES) * AMMO_VERSIONS_AMOUNT + ammoVersion;

    if (playSound) {
        Sound_PlayVoiceAskAmmo(soundOffset, client);
    }
}
