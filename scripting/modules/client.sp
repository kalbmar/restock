static int g_isPlayerRestocked[MAXPLAYERS + 1] = {RESTOCK_DEFAULT_VALUE, ...};

bool Client_IsUsesRestock(int client) {
    return g_isPlayerRestocked[client] >= ConVar_GetMaxCountUses();
}

int Client_GetActiveWeapon(int client) {
    return GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon");
}

void Client_ResetRestocked(int client) {
    g_isPlayerRestocked[client] = RESTOCK_DEFAULT_VALUE;
}

void Client_IncrementCounterRestockUses(int client) {
    g_isPlayerRestocked[client]++;
}
