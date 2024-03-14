#include <sourcemod>
#include <sdktools>
#include <morecolors>

#include "constant"

#include "modules/variables.sp"
#include "modules/con-var.sp"
#include "modules/command.sp"
#include "modules/client.sp"
#include "modules/event.sp"
#include "modules/message.sp"
#include "modules/sound.sp"
#include "modules/timer.sp"
#include "modules/weapon.sp"
#include "modules/use-case.sp"

public Plugin myinfo = {
    name = "Restock",
    author = "Kalbmar",
    description = "Weapon restock",
    version = "0.1.0",
    url = "https://github.com/kalbmar/restock",
};

public void OnPluginStart() {
    ConVar_Create();
    Commmand_Create();
    Event_Create();

    LoadTranslations("restock.phrases");
    AutoExecConfig(CONFIG_CREATE_YES, "restock");
}

public void OnMapStart() {
    Sound_Precache();
}

public void OnClientConnected(int client) {
    g_timerToNextUseResrock[client] = null;
    g_secondToUse[client] = TIMER_RESET;
}
