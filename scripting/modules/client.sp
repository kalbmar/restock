bool Client_IsUsesRestock(int client) {
    return g_isPlayerRestocked[client] >= g_restockMaxUses.IntValue ? true : false;
}

int Client_GetActiveWeapon(int client) {
    return GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon");
}

int Client_GetTeam(int client) {
    return GetClientTeam(client);
}
