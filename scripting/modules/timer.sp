static Handle g_timerToNextUseRestock[MAXPLAYERS + 1];
static float g_secondToUseRestock[MAXPLAYERS + 1];

void Timer_SetToRestock(int client) {
    int userId = GetClientUserId(client);
    float delayBetweenUses = ConVar_GetDelayUsesRestock();

    Client_IncrementCounterRestockUses(client);

    g_secondToUseRestock[client] = GetGameTime();
	
    g_timerToNextUseRestock[client] = CreateTimer(delayBetweenUses, Timer_UseRestock, userId, TIMER_RESTOCK_PLAYER_FLAGS);
}

public Action Timer_UseRestock(Handle timer, int userId) {
    int client = GetClientOfUserId(userId);

    if (client == INVALID_CLIENT) {
        return Plugin_Continue;
    }

    Timer_ResetTimeToNextUse(client);
	
    return Plugin_Continue;
}

void Timer_ResetTimeToNextUse(int client) {
    g_timerToNextUseRestock[client] = null;
}

bool Timer_IsValid(int client) {
    return g_timerToNextUseRestock[client] != null;
}

void Timer_NextRestockDestroy(int client) {
    delete g_timerToNextUseRestock[client];
}

float Timer_TimeToUseRestock(int client) {
    return g_secondToUseRestock[client];
}

void Timer_ResetTimeToUseRestock(int client) {
    g_secondToUseRestock[client] = TIMER_RESET;
}
