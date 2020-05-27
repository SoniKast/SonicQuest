/// animation_data(instance)
 // Get the animation data of a instance.
 
 // Sonic:
    if(player_index == CHAR_SONIC && CharacterState == CharacterNormal)
    {
       animation_index_sonic();
    }
    
    if(player_index == CHAR_SONIC && CharacterState == CharacterSuper or CharacterState == CharacterHyper)
    {
       animation_index_supersonic();
    }
    
 // Tails:
    if(player_index == CHAR_TAILS)
    {
       animation_index_tails();
    }
    
 // Knuckles:
    if(player_index == CHAR_KNUCKLES)
    {
       animation_index_knuckles();
    }    
    
 // Kast:
    if(player_index == CHAR_KAST)
    {
       animation_index_kast();
    }
