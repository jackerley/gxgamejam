/// @description Insert description here
// You can write your code in this editor


if(!rollback_game_running)
{
	draw_text(10,30,"Rollback game not running - waiting for players");
	
	
	
	
	var playercount = instance_number(oPlayer);

	if(playercount<2)
		draw_text(10,10,"Awaiting players current count:" + string(playercount));
}
else
	draw_text(10,10,"GameState=" + string(gamestate));
	
	
if(gamestate==eGameState.StartLine)
{
	draw_text(640,room_height/2,string(1+floor(countdown/60)));
}


draw_text(view_get_wport(0)-128,64,string(raceclock/60));





