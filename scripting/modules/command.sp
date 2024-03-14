void Commmand_Create() {
    AddCommandListener(Command_VoiceNeedAmmo, "voice_needammo");
    RegConsoleCmd("sm_restock", Command_Restock);
}

public Action Command_VoiceNeedAmmo(int client, const char[] command, int argc) {
    Command_ReceiveAmmo(client, PLAY_NEED_AMMO_SOUND_NO);
    
    return Plugin_Continue;
}

public Action Command_Restock(int client, int agrs) {
    Command_ReceiveAmmo(client, PLAY_NEED_AMMO_SOUND_YES);
    
    return Plugin_Handled;
}

void Command_ReceiveAmmo(int client, bool playSound) {
    if (!IsPlayerAlive(client)) {
        Message_RestockProhibited(client, MESSAGE_DEAD_PLAYER);
        
        return;
    }

    Sound_PlayAmmo(client, playSound);

    bool isUsesRestock = Client_IsUsesRestock(client);
	
    if (isUsesRestock) {
        Message_RestockProhibited(client, MESSAGE_NO_CAN_USE);
		
        return;
    }
	
    int second = RoundToCeil(g_delayUsesBetweenRestock.IntValue + g_secondToUse[client] - GetGameTime());

    if (g_timerToNextUseResrock[client] != null) {
        Message_CooldownTime(client, MESSAGE_COOLDOWN_TIME, second);
        		
        return;
    }
 
    int activeWeapon = Client_GetActiveWeapon(client);
    
    if (activeWeapon != WEAPON_NOT_FOUND) {
        Weapon_Define(client, activeWeapon);
    }
}
