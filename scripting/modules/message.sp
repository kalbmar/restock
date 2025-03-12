static char g_messageRestockAmmo[][] = {
    "Melee weapon",
    "Firearms weapon",
    "Bazooka weapon",
    "Grenade",
    "Grenade smoke",
    "Grenade rifle",
    "Grenade rifle",
    "Dead player",
    "No can use",
    "Cooldown time"
};

void Message_RestockProhibited(int client, int messageIndex) {
    PrintToChat(client, "%t%t", "Prefix", g_messageRestockAmmo[messageIndex]);
}

void Message_CooldownTime(int client, int messageIndex, int time) {
    PrintToChat(client, "%t%t", "Prefix", g_messageRestockAmmo[messageIndex], time);
}

void Message_RestockedAmmo(int client, WeaponType weaponType, int ammoAmount) {
    PrintToChat(client, "%t%t", "Prefix", g_messageRestockAmmo[weaponType], ammoAmount);
}
