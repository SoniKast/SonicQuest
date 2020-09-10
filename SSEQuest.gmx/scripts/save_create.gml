/// save_create(slot);
 // Creates a save file for this engine. Load using save_load(slot)
 // Since we can only store inis in the same folder as the game executable, we'll use text file instead.
 
 // Exit in certain rooms.
    if(room = rm_ending_cutscene || room = rm_credits || room = rm_ending_cutscene_complete || room = rm_continue
    || room = rm_template || room = rm_level_select || room = rm_sunshine_valley1 || room = rm_sunshine_valley2 ||
    room = rm_special_stage1 || room = rm_special_stage2 || room = rm_special_stage3 || room = rm_special_stage4 ||
    room = rm_special_stage5 || room = rm_special_stage6 || room = rm_special_stage7 || room = rm_bonus1 || room = rm_bonus3 ||
    room = rm_options || room = rm_hidden_palace || room = rm_bridge_zone1 || room = rm_bridge_zone2 || room = rm_sound_test) exit
    
 // Add a zero in front argument0 if it's less than 10.
    if(argument0 < 10)
    {
       argument0 = "0"+string(argument0);
    }
    
 // Store data:
    {
       // Encryption key:
          var dkey;
          dkey = $4ad682aeb7218;
       // Open save:
          var dfile;
          dfile = file_text_open_write(working_directory+"\data\save\quest_data"+string(argument0)+".sav");
       // Warning:
          file_text_write_string(dfile, ""+string(GAME_NAME)+" Save Data - Editing this file can cause issues.");
          file_text_writeln(dfile);
       // Zone:
          file_text_write_string(dfile, string(global.zone_id^dkey));
          file_text_writeln(dfile);
       // Lives:
          file_text_write_string(dfile, string(global.player_lives^dkey));
          file_text_writeln(dfile);       
       // Continues:
          file_text_write_string(dfile, string(global.player_continues^dkey));
          file_text_writeln(dfile);                 
       // Emeralds
          file_text_write_string(dfile, string(global.player_emeralds^dkey));
          file_text_writeln(dfile);            
       // Character:
          file_text_write_string(dfile, string(global.player_id^dkey));
          file_text_writeln(dfile); 
       // CPU:
          file_text_write_string(dfile, string(global.cpu^dkey));
          file_text_writeln(dfile);           
       // Game completed:
          file_text_write_string(dfile, string(global.game_completed^dkey));
          file_text_writeln(dfile);    
       // Used Emeralds:
          file_text_write_string(dfile, string(global.used_emerald_1^dkey));
          file_text_writeln(dfile);  
          file_text_write_string(dfile, string(global.used_emerald_2^dkey));
          file_text_writeln(dfile);  
          file_text_write_string(dfile, string(global.used_emerald_3^dkey));
          file_text_writeln(dfile);  
          file_text_write_string(dfile, string(global.used_emerald_4^dkey));
          file_text_writeln(dfile);  
          file_text_write_string(dfile, string(global.used_emerald_5^dkey));
          file_text_writeln(dfile);  
          file_text_write_string(dfile, string(global.used_emerald_6^dkey));
          file_text_writeln(dfile);  
          file_text_write_string(dfile, string(global.used_emerald_7^dkey));
          file_text_writeln(dfile);
       // Close.                  
          file_text_close(dfile);
    }

