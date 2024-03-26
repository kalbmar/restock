static char g_ammoSounds[][] = {
    "player/american/us_needammo.wav",
    "player/american/us_needammo2.wav",
    "player/american/us_needammo3.wav",
    "player/german/ger_needammo.wav",
    "player/german/ger_needammo2.wav",
    "player/german/ger_needammo3.wav"
};

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
    int team = GetClientTeam(client);
    int ammoVersion = GetRandomInt(AMMO_VERSION_FIRST, AMMO_VERSION_THREE);
    int soundOffset = (team - TEAM_ALLIES) * AMMO_VERSIONS_AMOUNT + ammoVersion;

    if (playSound) {
        Sound_PlayVoiceAskAmmo(soundOffset, client);
    }
}
