/// @description Insert description here
// You can write your code in this editor







rollback_define_player(oPlayer);

if(!rollback_join_game())
{
	rollback_create_game(4,false);
}

rollback_display_events(true);