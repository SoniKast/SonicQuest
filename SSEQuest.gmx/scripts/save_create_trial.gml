/// save_create_trial();
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
          file_text_write_string(dfile, ""+string(GAME_NAME)+" Time Attack Data - Editing this file can cause issues. That is, if you figure out how.");
          file_text_writeln(dfile);
       // Time Attack Values:
          file_text_write_string(dfile, string(global.best_time_ssz1^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ssz2^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ggz1^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ggz2^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ppz1^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ppz2^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ffz1^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ffz2^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ccz1^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ccz2^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ttz1^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ttz2^dkey));
          file_text_writeln(dfile);
          file_text_write_string(dfile, string(global.best_time_ttz3^dkey));
          file_text_writeln(dfile);
       // Close.                  
          file_text_close(dfile);
    }
