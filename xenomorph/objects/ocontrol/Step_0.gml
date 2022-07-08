/// @description Insert description here
// You can write your code in this editor



if(!rollback_game_running)
{
	
	if(gamestate!=eGameState.WaitingPlayers)
		ChangeState(eGameState.WaitingPlayers);
	
}
else
{
	if(gamestate==eGameState.WaitingPlayers)
		ChangeState(eGameState.StartLine);
}

if(gamestate==eGameState.StartLine)
{
	countdown--;
	if(countdown==0)
		ChangeState(eGameState.Playing);
}
if(gamestate ==eGameState.Playing)
{
	raceclock++;
}
