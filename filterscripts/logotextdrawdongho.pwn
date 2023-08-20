#include <a_samp>

new Text:Clock[2];

public OnFilterScriptInit()
{
	Clock[1] = TextDrawCreate(576.400695, 20.018529, "15:27");
	TextDrawLetterSize(Clock[1], 0.512664, 2.351999);
	TextDrawAlignment(Clock[1], 2);
	TextDrawColor(Clock[1], -1);
	TextDrawSetShadow(Clock[1], 0);
	TextDrawSetOutline(Clock[1], 1);
	TextDrawBackgroundColor(Clock[1], 255);
	TextDrawFont(Clock[1], 3);
	TextDrawSetProportional(Clock[1], 1);
	TextDrawSetShadow(Clock[1], 0);

	SetTimer("UpdateTime", 6000, true);
	return 1;
}
public OnFilterScriptExit()
{
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
	    	TextDrawHideForPlayer(i, Clock[1]);
	}
	return 1;
}
public OnPlayerConnect(playerid)
{
	TextDrawShowForPlayer(playerid, Clock[1]);
	return 1;
}
forward UpdateTime();
public UpdateTime()
{
    new
        day,
        year,
        month,
        hours,
        minute,
        sec,
        string[128]
    ;
    getdate(year, month, day);
    gettime(hours, minute, sec);
    format(string, sizeof(string), "%02d:%02d", hours, minute);
    TextDrawSetString(Clock[1], string);
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
	    TextDrawHideForPlayer(i, Clock[1]);
		TextDrawShowForPlayer(i, Clock[1]);
    }
    return 1;
}
