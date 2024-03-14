void ConVar_Create() {
    g_restockMaxUses = CreateConVar("sm_restock_max_uses", "2", "Maximum count uses");
    g_delayUsesBetweenRestock = CreateConVar("sm_restock_delay_uses", "30", "Delay between restock");
}
