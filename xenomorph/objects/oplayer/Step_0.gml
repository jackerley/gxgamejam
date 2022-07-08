/// @description Insert description here
// You can write your code in this editor


switch(global.controller.gamestate)
{
	case eGameState.StartLine:
	{
		x=284-sprite_width/2;
		y = 100+ player_id*100;
		
	}
	break;
	case eGameState.Playing:
	{
		
		if(player_local)
		{
			
			var _x= x-1280/2;
			var _y = y-720/2;
			
			_x = lerp(x,_x,0.5);
			_y = lerp(y,_y,0.5);
			
			_x = clamp(_x,0,room_width-1280)
			_y = clamp(_y,0, room_height -720);
			
			camera_set_view_pos(view_camera[0],_x,_y);
			
			//var cam = view_get_camera(0);
			//show_debug_message("setting follow for camera");
			//cam.follow = id;
			//show_debug_message("done setting follow for camera");
		}
		
		var _input = rollback_get_input();

		if (_input.left)
		{
		        x -= 5;
		}
		if (_input.right)
		{
		        x += 5;
		}
		if (_input.down)
		{
		        y += 5;
		}
		if (_input.up)
		{
		        y -= 5;
		}

		if(x>3580 +sprite_width/2)
		{
			ChangeState(eGameState.PostGame);
		}
		
		if(x<sprite_width/2)
			x= sprite_width/2;
			
		if(x>room_width-sprite_width/2)
			x = room_width-sprite_width/2;
			
		if(y<sprite_height/2)
			y= sprite_height/2;

		if(y>room_height -sprite_height/2)
			y= room_height- sprite_height/2;
	}
	break;
	
}







