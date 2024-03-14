void Message_RestockProhibited(int client, int messageIndex) {
    CPrintToChat(client, "%t%t", "Prefix", g_messageRestockAmmo[messageIndex]);
}

void Message_CooldownTime(int client, int messageIndex, int time) {
    CPrintToChat(client, "%t%t", "Prefix", g_messageRestockAmmo[messageIndex], time);
}

void Message_RestocketAmmo(int client, int ammoType, WeaponType weaponType) {
    CPrintToChat(client, "%t%t", "Prefix", g_messageRestockAmmo[weaponType], g_weaponAmmoArray[ammoType]);
}
