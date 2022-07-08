/// @description Insert description here
// You can write your code in this editor

draw_set_font(ChunkyFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

global.controller = id;

enum eGameState{
	Undefined,
	WaitingPlayers,
	StartLine,
	Playing,
	PostGame
}

gamestate = eGameState.Undefined;

countdown = 180;
raceclock =0;
rollback_define_player(oPlayer);

if(!rollback_join_game())
{
	rollback_create_game(4,false);
	ChangeState(eGameState.WaitingPlayers);
}
else
	ChangeState(eGameState.StartLine); //May be joining a game in progress - not sure how to handle this?
rollback_display_events(true);