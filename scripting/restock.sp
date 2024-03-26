#include <sourcemod>
#include <sdktools>
#include <morecolors>

#include "sound"
#include "client"
#include "console-command"
#include "timer"
#include "use-case"
#include "weapon"

#include "modules/console-variable.sp"
#include "modules/console-command.sp"
#include "modules/client.sp"
#include "modules/event.sp"
#include "modules/sound.sp"
#include "modules/timer.sp"
#include "modules/weapon.sp"
#include "modules/use-case.sp"
#include "modules/message.sp"

#define CONFIG_CREATE_YES true

public Plugin myinfo = {
    name = "Restock",
    author = "Kalbmar",
    description = "Weapon restock",
    version = "1.0.0",
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
    Timer_ResetTimeToNextUse(client);
    Timer_ResetTimeToUseRestock(client);
}
