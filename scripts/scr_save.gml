///scr_save();
ini_open(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini")

ini_write_real( "SLOT", "STAGE",                             room);
ini_write_real( "SLOT", "CHAR",                  global.player_id);
ini_write_real( "SLOT", "CPU",                         global.cpu);
ini_write_real( "SLOT", "LIVES",              global.player_lives);
ini_write_real( "SLOT", "EMERALDS",        global.player_emeralds);
ini_write_real( "SLOT", "ICON",           global.data_select_icon);
ini_write_real( "SLOT", "CONTINUES",      global.player_continues);
ini_write_real( "SLOT", "GAME COMPLETED",   global.game_completed);
ini_write_real( "SLOT", "USED EMERALD 1",   global.used_emerald_1);
ini_write_real( "SLOT", "USED EMERALD 2",   global.used_emerald_2);
ini_write_real( "SLOT", "USED EMERALD 3",   global.used_emerald_3);
ini_write_real( "SLOT", "USED EMERALD 4",   global.used_emerald_4);
ini_write_real( "SLOT", "USED EMERALD 5",   global.used_emerald_5);
ini_write_real( "SLOT", "USED EMERALD 6",   global.used_emerald_6);
ini_write_real( "SLOT", "USED EMERALD 7",   global.used_emerald_7);

ini_close();












































/*
///scr_save();
      
    //Store data:
    {
        // Open save:
        var dfile;
        dfile = file_text_open_write(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini");
        // Lives
        file_text_write_string(dfile, string(global.player_lives));
        file_text_writeln(dfile);
        // Emeralds
        file_text_write_string(dfile, string(global.player_emeralds));
        file_text_writeln(dfile);
        // Character
        file_text_write_string(dfile, string(global.player_id));
        file_text_writeln(dfile);
        // CPU
        file_text_write_string(dfile, string(global.cpu));
        file_text_writeln(dfile);
        // Zone
        file_text_write_string(dfile, string(global.zone_id));
        file_text_writeln(dfile);
        // Data Select Icon
        file_text_write_string(dfile, string(global.data_select_icon));
        file_text_writeln(dfile);
        // Continues
        file_text_write_string(dfile, string(global.continues));
        file_text_writeln(dfile);           
       // Game completed:
        file_text_write_string(dfile, string(global.game_completed));
        file_text_writeln(dfile); 
       // Used Emeralds:
        file_text_write_string(dfile, string(global.used_emeralds));
        file_text_writeln(dfile); 
        // Close.
        file_text_close(dfile);
    }
