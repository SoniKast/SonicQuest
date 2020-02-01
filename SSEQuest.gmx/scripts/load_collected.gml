/// load_collected(slot);
 // Loads the save slot with the given id.
 
 // Add a zero in front argument0 if it's less than 10.
    if(argument0 < 10)
    {
       argument0 = "0"+string(argument0);
    }
    
 // If the save does not exist, exit.    
    if(file_exists(working_directory+"\data\save\data"+string(argument0)+".sav") == false)
    {
       return false;
    }
    
 // Load data:
    if(file_exists(working_directory+"\data\save\data"+string(argument0)+".sav") == true)
    {
       // Decryption key:
          var dkey;
          dkey = $4ad682aeb7218;
       // Open save:
          var dfile;
          dfile = file_text_open_read(working_directory+"\data\save\data"+string(argument0)+".sav");    
       // Character:
          var obj_name;
          obj_name = string(room)+string(id)
          dec_exists = file_text_read_real(dfile);
          exists = (dkey ^ dec_exists);
          file_text_readln(dfile);                    
       // Close.                  
          file_text_close(dfile);
       // Exists? Die.
        if exists==0{
        instance_destroy()
        exit;
        }
       // Return 1.
          return true;
    }
