/// save_delete(slot)
    
 // Check if the save exists and delete it. Otherwise return false.   
    if(file_exists(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini"))
    { 
       file_delete(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini");
       return true;
    }
    else
    {
       return false;
    }
        
