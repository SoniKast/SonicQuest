/// save_load_trial();
 // Loads the time trial data.
 
 // Open/Create ini.
    ini_open(working_directory+"\data\save\time_trial_data.bin");
    {
       global.best_time_ssz1   = ini_read_real("RIVERSIDE VALLEY 1",   "RVZ1",  0);
       global.best_time_ssz2   = ini_read_real("RIVERSIDE VALLEY 2",   "RVZ2",  0);
       global.best_time_ggz1   = ini_read_real("PETAL PARK 1",         "PPZ1",  0);
       global.best_time_ggz2   = ini_read_real("PETAL PARK 2",         "PPZ2",  0);
       global.best_time_ppz1   = ini_read_real("CHAOTIC CASINO 1",     "CCZ1",  0);
       global.best_time_ppz2   = ini_read_real("CHAOTIC CASINO 2",     "CCZ2",  0);
       global.best_time_ffz1   = ini_read_real("FRANTIC FOREST 1",     "FFZ1",  0); 
       global.best_time_ffz2   = ini_read_real("FRANTIC FOREST 2",     "FFZ2",  0);  
       global.best_time_ccz1   = ini_read_real("WILD WATERWORKS 1",    "WWZ1",  0);
       global.best_time_ccz2   = ini_read_real("WILD WATERWORKS 2",    "WWZ2",  0);                                 
       global.best_time_ttz1   = ini_read_real("TWISTED TOWERS 1",     "TTZ1",  0);                                 
       global.best_time_ttz2   = ini_read_real("TWISTED TOWERS 2",     "TTZ2",  0);
       global.best_time_ttz3   = ini_read_real("TWISTED TOWERS 3",     "TTZ3",  0);                                 
    }
    ini_close()
    
