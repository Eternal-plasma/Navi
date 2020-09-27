// update - called every game tick
//Taunt Setup
taunt_restriction = 420;
if(taunt_timer < 0)
{
    taunt_timer++;
}
if(taunt_timer > 0)
{
    state = "taunt";
    taunt_timer++;
    if(taunt_timer >= taunt_restriction)
    {
        taunt_timer = -8;
    }
}
if(state == "taunt" && taunt_timer == 0 && state_timer == 1)
{
    sound_play(sound_get("taunt"));
    taunt_timer++;
}