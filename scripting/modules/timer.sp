void Timer_SetToRestock(int client) {
    int userId = GetClientUserId(client);
    float delayBetweenUses = g_delayUsesBetweenRestock.FloatValue;

    g_isPlayerRestocked[client]++;

    g_secondToUse[client] = GetGameTime();
	
    g_timerToNextUseResrock[client] = CreateTimer(delayBetweenUses, Timer_UseRestock, userId, TIMER_RESTOCK_PLAYER_FLAGS);
}

public Action Timer_UseRestock(Handle timer, int userId) {
    int client = GetClientOfUserId(userId);

    if (client == INVALID_CLIENT) {

        return Plugin_Continue;
    }

    g_timerToNextUseResrock[client] = null;
	
    return Plugin_Continue;
}
