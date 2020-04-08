/// save_load_trial();
 // Loads the time trial data.
    
 // If the save does not exist, exit.    
    if(file_exists(working_directory+"\data\save\time_trial_data.sav") == false)
    {
       return false;
    }
    
 // Load data:
    if(file_exists(working_directory+"\data\save\time_trial_data.sav") == true)
    {
       // Decryption key:
          var dkey;
          dkey = $4ad682aeb7218;
       // Open save:
          var dfile;
          dfile = file_text_open_read(working_directory+"\data\save\time_trial_data.sav");
       // Skip Warning:
          file_text_readln(dfile);    
       // Best times for SSZ
          var ssz1Val;
          ssz1Val                = file_text_read_real(dfile);
          global.best_time_ssz1 = (dkey ^ ssz1Val);
          file_text_readln(dfile);
          var ssz2Val;
          ssz2Val                = file_text_read_real(dfile);
          global.best_time_ssz2 = (dkey ^ ssz2Val);
          file_text_readln(dfile);
       // Best times for GGZ
          var ggz1Val;
          ggz1Val                = file_text_read_real(dfile);
          global.best_time_ggz1 = (dkey ^ ggz1Val);
          file_text_readln(dfile);
          var ggz2Val;
          ggz2Val                = file_text_read_real(dfile);
          global.best_time_ggz2 = (dkey ^ ggz2Val);
          file_text_readln(dfile);
       // Best times for PPZ
          var ppz1Val;
          ppz1Val                = file_text_read_real(dfile);
          global.best_time_ppz1 = (dkey ^ ppz1Val);
          file_text_readln(dfile);
          var ppz2Val;
          ppz2Val                = file_text_read_real(dfile);
          global.best_time_ppz2 = (dkey ^ ppz2Val);
          file_text_readln(dfile);
       // Best times for FFZ
          var ffz1Val;
          ffz1Val                = file_text_read_real(dfile);
          global.best_time_ffz1 = (dkey ^ ffz1Val);
          file_text_readln(dfile);
          var ffz2Val;
          ffz2Val                = file_text_read_real(dfile);
          global.best_time_ffz2 = (dkey ^ ffz2Val);
          file_text_readln(dfile);
       // Best times for CCZ
          var ccz1Val;
          ccz1Val                = file_text_read_real(dfile);
          global.best_time_ccz1 = (dkey ^ ccz1Val);
          file_text_readln(dfile);
          var ccz2Val;
          ccz2Val                = file_text_read_real(dfile);
          global.best_time_ccz2 = (dkey ^ ccz2Val);
          file_text_readln(dfile);
       // Best times for TTZ
          var ttz1Val;
          ttz1Val                = file_text_read_real(dfile);
          global.best_time_ttz1 = (dkey ^ ttz1Val);
          file_text_readln(dfile);
          var ttz2Val;
          ttz2Val                = file_text_read_real(dfile);
          global.best_time_ttz2 = (dkey ^ ttz2Val);
          file_text_readln(dfile);
          var ttz3Val;
          ttz3Val                = file_text_read_real(dfile);
          global.best_time_ttz3 = (dkey ^ ttz3Val);
          file_text_readln(dfile);
       // Close.                  
          file_text_close(dfile);
          
       // Return 1.
          return true;
    }
