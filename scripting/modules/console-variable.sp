static ConVar g_restockMaxUses = null;
static ConVar g_delayUsesBetweenRestock = null;

void ConVar_Create() {
    g_restockMaxUses = CreateConVar("sm_restock_max_uses", "2", "Maximum count uses");
    g_delayUsesBetweenRestock = CreateConVar("sm_restock_delay_uses", "30.0", "Delay between restock");
}

float ConVar_GetDelayUsesRestock() {
    return g_delayUsesBetweenRestock.FloatValue;
}

int ConVar_GetMaxCountUses() {
    return g_restockMaxUses.IntValue;
}
