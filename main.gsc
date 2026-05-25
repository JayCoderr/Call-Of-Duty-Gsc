/////////////////////////////////////////////////
// this is a test
/////////////////////////////////////////////////
#include maps\mp\_utility;
#include maps\mp\gametypes\_callbacksetup;

init()
{
    level thread onPlayerConnect();

    println("Custom GSC Loaded");
}

onPlayerConnect()
{
    for (;;)
    {
        level waittill("connecting", player);

        player thread playerConnect();
    }
}

playerConnect()
{
    self iprintln("^2Player Connected");

    self thread onPlayerSpawned();
}

onPlayerSpawned()
{
    self endon("disconnect");

    for (;;)
    {
        self waittill("spawned_player");

        self thread playerSpawn();
    }
}

playerSpawn()
{
    self iprintln("^3Player Spawned");

    // Example:
    // self giveWeapon("thompson_mp");
    // self switchToWeapon("thompson_mp");
}
