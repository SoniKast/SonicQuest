// call this script to save the stuff/game
//scr_collected(true or false)
slot_data = ini_open(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini"){


var obj_name;
obj_name = string(room)+string(id)
  ini_write_real("SLOT",obj_name,   0);

};
ini_close()












































/* call this script to save the stuff/game
// scr_collected(true or false)
        
        // Open save:
        var slot_data;
        slot_data = file_text_open_write(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini"){
        // Saving the object
        var obj_name;
        obj_name = string(room)+string(id)
        file_text_write_string(slot_data, string(obj_name));
        file_text_writeln(slot_data); 
        // Close.
        file_text_close(slot_data);
        };
