/// save_create_trial(best time);
 // Creates a save file for the time trial.

 // Store data:
    {
       // Encryption key:
          var dkey;
          dkey = $4ad682aeb7218;
       // Open save:
          var dfile;
          dfile = file_text_open_write(working_directory+"\data\save\time_trial_data.sav");
       // Warning:
          file_text_write_string(dfile, ""+string(GAME_NAME)+" Time Attack Data - Editing this file can cause issues.");
          file_text_writeln(dfile);
       // Time Attack Values:
          file_text_write_string(dfile, string(argument0^dkey));
          file_text_writeln(dfile);
       // Close.                  
          file_text_close(dfile);
    }
