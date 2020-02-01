/// save_collected(slot);
 // Creates a save file for this engine. Load using save_load(slot)
 // Since we can only store inis in the same folder as the game executable, we'll use text file instead.
 
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
          dfile = file_text_open_write(working_directory+"\data\save\data"+string(argument0)+".sav");
       // Collected:
          var obj_name;
          obj_name = string(room)+string(id)
          file_text_write_string(dfile, string(obj_name^dkey));
          file_text_writeln(dfile);
       // Close.                  
          file_text_close(dfile);
    }
