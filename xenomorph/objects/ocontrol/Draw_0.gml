/// @description Insert description here
// You can write your code in this editor


if(!rollback_game_running)
{
	draw_text(10,30,"Rollback game not running - waiting for players");
	
	if(instance_number(oStartGame)==0)
		instance_create_layer(room_width/2,room_height/2,"Instances",oStartGame);
		
}
else
{
	if(instance_number(oStartGame)>0)
	{
		with(oStartGame)
			instance_destroy();
	}
}

var playercount = instance_number(oPlayer);

if(playercount<2)
	draw_text(10,10,"Awaiting players current count:" + string(playercount));






