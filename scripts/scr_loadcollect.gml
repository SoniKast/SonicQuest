slot_data = ini_open(working_directory+"\data\save\QuestData"+string(global.save_file)+".ini"){

var obj_name;
obj_name = string(room)+string(id)
// ini_read_real("SLOT",obj_name,   argument0   ^ ini_randomize);
 dec_exists     = ini_read_real("SLOT",obj_name,                    1); 
 exists           = dec_exists;
 
 
};
ini_close()

if exists==0{
 instance_destroy()
 exit;
 }
 

