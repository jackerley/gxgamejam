// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function ChangeState(newstate){
	with(oControl)
	{
		if(newstate==gamestate)
			return;
		switch(gamestate)
		{
			//Clean up old state
			case eGameState.WaitingPlayers:
			{
				with(oStartGame)
					instance_destroy();
			}
			break;
			case eGameState.PostGame:
			{
				with(oRestartGame)
					instance_destroy();
			}
			break;
		}
	
		switch(newstate)
		{
			//Set up for new state
			
			case eGameState.WaitingPlayers:
			{
				instance_create_layer(320,room_height/2,"UILayer",oStartGame);
			}
			break;
			case eGameState.StartLine:
			{
				countdown=180;
				raceclock =0;
				var cam = view_get_camera(0);
				camera_set_view_pos(cam,0,0);
				
				with(oPlayer)
				{
					image_angle = -90;
					velx=0;
					vely=0;
				}


			}
			break;
			case eGameState.PostGame:
			{
				instance_create_layer(0,0,"UILayer",oRestartGame);
			}
			break;
		}
	
	
		gamestate = newstate;
	}
}



