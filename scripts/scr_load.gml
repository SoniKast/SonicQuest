///scr_load();
    
    // If the save does not exist, exit.    
    if(!file_exists(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini"))
    { 
        return false;
    }
    
    //Load data:
    if(file_exists(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini"))
    {
        // Open save:
        var dfile;
        dfile = ini_open(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini");
        // Lives
        var livesVal;
        livesVal               = file_text_read_real(dfile);
        global.player_lives    = (livesVal);
        file_text_readln(dfile);
        // Emeralds
        var emeraldVal;
        emeraldVal             = file_text_read_real(dfile);
        global.player_emeralds = (emeraldVal);
        file_text_readln(dfile);
        // Character
        var charVal;
        charVal                = file_text_read_real(dfile);
        global.player_id       = (charVal);
        file_text_readln(dfile);
        // CPU
        var cpuVal;
        cpuVal                 = file_text_read_real(dfile);
        global.cpu             = (cpuVal);
        file_text_readln(dfile);
        // Zone
        var zoneVal;
        zoneVal                = file_text_read_real(dfile);
        global.zone_id         = (zoneVal);
        file_text_readln(dfile);
        // Data Select Icon
        var dataVal;
        dataVal                 = file_text_read_real(dfile);
        global.data_select_icon = (dataVal);
        file_text_readln(dfile);
        // Continues
        var continueVal;
        continueVal             = file_text_read_real(dfile);
        global.continues        = (continueVal);
        file_text_readln(dfile);    
        // Game completed:
        var gameVal;
        gameVal               = file_text_read_real(dfile);
        global.game_completed = (dkey ^ gameVal);
        file_text_readln(dfile)
        // Used Emeralds:
        var usedemeraldsVal;
        usedemeraldsVal       = file_text_read_real(dfile);
        global.used_emeralds  = (dkey ^ usedemeraldsVal);
        file_text_readln(dfile);
        
        // Close.
        file_text_close(dfile);
        
        // Return 1.
        return true;
    }
