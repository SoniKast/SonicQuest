/// save_create_trial();
 // Creates a save file for the time trial.
 
 // Open/Create ini.
    ini_open("time_trial_data.bin");
    {
       ini_write_real("RIVERSIDE VALLEY 1", "RVZ1",      global.best_time_ssz1);
       ini_write_real("RIVERSIDE VALLEY 2", "RVZ2",      global.best_time_ssz2);       
       ini_write_real("PETAL PARK 1",       "PPZ1",      global.best_time_ggz1);          
       ini_write_real("PETAL PARK 2",       "PPZ2",      global.best_time_ggz2);        
       ini_write_real("CHAOTIC CASINO 1",   "CCZ1",      global.best_time_ppz1); 
       ini_write_real("CHAOTIC CASINO 2",   "CCZ2",      global.best_time_ppz2);     
       ini_write_real("FRANTIC FOREST 1",   "FFZ1",      global.best_time_ffz1);      
       ini_write_real("FRANTIC FOREST 2",   "FFZ2",      global.best_time_ffz2);  
       ini_write_real("WILD WATERWORKS 1",  "WWZ1",      global.best_time_ccz1);
       ini_write_real("WILD WATERWORKS 2",  "WWZ2",      global.best_time_ccz2);           
       ini_write_real("TWISTED TOWERS 1",   "TTZ1",      global.best_time_ttz1);  
       ini_write_real("TWISTED TOWERS 2",   "TTZ2",      global.best_time_ttz2);
       ini_write_real("TWISTED TOWERS 3",   "TTZ3",      global.best_time_ttz3);                                 
    }
    ini_close()
    
