/// save_reload_all()
 // Reloads every save file again. Used when returning to the data select screen.

 // Load save slots:
    global.save_selected  = 1;  
    for(i=1; i<9; i+=1)
    {
        var _slot;
        _slot = save_load(i);

        if(_slot == true)
        {
           global.save_slot_zone          [i] = global.zone_id;
           global.save_slot_character     [i] = global.player_id;
           global.save_slot_cpu           [i] = global.cpu;
           global.save_slot_lives         [i] = global.player_lives;           
           global.save_slot_continues     [i] = global.player_continues;               
           global.save_slot_emeralds      [i] = global.player_emeralds;
           global.save_slot_completed     [i] = global.game_completed;
           global.save_slot_used_emerald1 [i] = global.used_emerald_1;
           global.save_slot_used_emerald2 [i] = global.used_emerald_2;
           global.save_slot_used_emerald3 [i] = global.used_emerald_3;
           global.save_slot_used_emerald4 [i] = global.used_emerald_4;
           global.save_slot_used_emerald5 [i] = global.used_emerald_5;
           global.save_slot_used_emerald6 [i] = global.used_emerald_6;
           global.save_slot_used_emerald7 [i] = global.used_emerald_7;
        }        
        else
        {
           global.save_slot_zone          [i] = 0;
           global.save_slot_character     [i] = 1;
           global.save_slot_cpu           [i] = 2;
           global.save_slot_lives         [i] = 3;           
           global.save_slot_continues     [i] = 0;               
           global.save_slot_emeralds      [i] = 0;
           global.save_slot_completed     [i] = 0;
           global.save_slot_used_emerald1 [i] = 0;
           global.save_slot_used_emerald2 [i] = 0;
           global.save_slot_used_emerald3 [i] = 0;
           global.save_slot_used_emerald4 [i] = 0;
           global.save_slot_used_emerald5 [i] = 0;
           global.save_slot_used_emerald6 [i] = 0;
           global.save_slot_used_emerald7 [i] = 0;
        }        
    }
