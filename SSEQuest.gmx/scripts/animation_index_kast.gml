/// animation_index_kast()
 // Store all of Kast's animations here:
 
 // Idle:
    if(animation = "idle")
    {
       sprite                 = spr_kast_idle;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;
    }
    
 // Idle (Bored):
    if(animation = "idle bored")
    {
       sprite                 = spr_kast_idle;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0.10;
       animation_repeat       = 1;
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Crouch:
    if(animation = "crouch")
    {
       sprite                 = spr_kast_crouch;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.15;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Look up:
    if(animation = "look up")
    {
       sprite                 = spr_kast_lookup;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.15;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
         
 // Walk:
    if(animation = "walk")
    {
       sprite                 = spr_kast_walk;
       animation_start        = 0;
       animation_end          = 9;
       animation_loop         = 0;
       animation_speed        = 0.125;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to   =  "";
       animation_linked_frame = 0;     
    }
 
 // Run:
    if(animation = "run")
    {
       sprite                 = spr_kast_run;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }    
    
 // Roll:
    if(animation = "roll")
    {
       sprite                 = spr_kast_roll;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
 
 // Dropdash:
    if(animation = "dropdash")
    {
       sprite                 = spr_kast_drop_dash;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.5;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
        
 // Spindash:
    if(animation = "spindash")
    {
       sprite                 = spr_kast_spindash;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.8;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }   
    
 // Spring:
    if(animation = "spring")
    {
       sprite                 = spr_kast_spring;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }        
    
 // Skid:
    if(animation = "skid")
    {
       sprite                 = spr_kast_skid;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 2;
       animation_speed        = 0.25;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "skid turn";
       animation_linked_frame = 0;      
    }      
      
 // Skid turn:
    if(animation = "skid turn")
    {
       sprite                 = spr_kast_skid;
       animation_start        = 3;
       animation_end          = 3;
       animation_loop         = 3;
       animation_speed        = 0.25;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }        
      
 // Push:
    if(animation = "push")
    {
       sprite                 = spr_kast_push;
       animation_start        = 0;
       animation_end          = 4;
       animation_loop         = 1;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }  
    
 // Grab
    if(animation = "grab")
    {
       sprite                 = spr_kast_grab;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0.06;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }  
    
 // Glider
    if(animation = "glider")
    {
       sprite                 = spr_sonic_glider;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0.06;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }          
    
 // Grab move.
    if(animation = "grab move")
    {
       sprite                 = spr_sonic_grab_move;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }       
    
 // Grab shimmy.
    if(animation = "grab shimmy")
    {
       sprite                 = spr_sonic_grab_shimmy;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.15;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }        
    
 // Corkscrew.
    if(animation = "corkscrew")
    {
       sprite                 = spr_kast_corkscrew;
       animation_start        = 0;
       animation_end          = 11;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Falling.
    if(animation = "falling")
    {
       sprite                 = spr_sonic_falling;
       animation_start        = 0;
       animation_end          = 3;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Balance.
    if(animation = "balance")
    {
       sprite                 = spr_kast_edge_balance;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 0;
       animation_speed        = 0.15;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
    
 // Balance alt.
    if(animation = "balance alt")
    {
       sprite                 = spr_sonic_balance_alt;
       animation_start        = 0;
       animation_end          = 2;
       animation_loop         = 0;
       animation_speed        = 0.12;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }
                   
 // Hurt.
    if(animation = "hurt")
    {
       sprite                 = spr_kast_hurt;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.10;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }        
    
 // Breath.
    if(animation = "breath")
    {
       sprite                 = spr_kast_breath;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }   
        
 // Death.
    if(animation = "death")
    {
       sprite                 = spr_kast_die;
       animation_start        = 0;
       animation_end          = 0;
       animation_loop         = 0;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }   
        
 // Drown.
    if(animation = "drown")
    {
       sprite                 = spr_kast_die;
       animation_start        = 1;
       animation_end          = 1;
       animation_loop         = 1;
       animation_speed        = 0;
       animation_repeat       = 0; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }                            
    
 // Transform.
    if(animation = "transform")
    {
       sprite                 = spr_kast_transform;
       animation_start        = 0;
       animation_end          = 4;
       animation_loop         = 3;
       animation_speed        = 0.18;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }      
    
  // Float.
    if(animation = "float")
    {
       sprite                 = spr_sonic_float;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.18;
       animation_repeat       = 1; 
       animation_repeat_times = -1;
       animation_linked_to    = "";
       animation_linked_frame = 0;      
    }           
     
   // Peelout Animation:
     if(animation = "peelout")
     {
        sprite                = spr_kast_peelout;         
        animation_start       = 0;
        animation_end         = 6;
        animation_loop        = 3;
        animation_speed       = 0.5;
        animation_repeat      = 1;
        animation_repeat_times = -1;
        animation_linked_to    = "";
        animation_linked_frame = 0;      
     }    
    
 // Roll:
    if(animation = "tube")
    {
       sprite                 = spr_kast_roll;
       animation_start        = 0;
       animation_end          = 7;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }              
    
   // Goal:            
     if(animation = "goal")
     {
        sprite                 = spr_kast_goal;         
        animation_start        = 0;
        animation_end          = 4;
        animation_loop         = 1;
        animation_speed        = 0.2;
        animation_repeat       = 1; 
        animation_repeat_times = -1;
        animation_linked_to    = "";
        animation_linked_frame = 0;     
     }   
    
 // Pole grab vertical:
    if(animation = "pole grab")
    {
       sprite                 = spr_sonic_pole_grab;
       animation_start        = 0;
       animation_end          = 5;
       animation_loop         = 0;
       animation_speed        = 0.2;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }  
    
 // Pole grab horizontal:
    if(animation = "pole grab horizontal")
    {
       sprite                 = spr_sonic_pole_grab_h;
       animation_start        = 0;
       animation_end          = 1;
       animation_loop         = 0;
       animation_speed        = 0.1;
       animation_repeat       = 1; 
       animation_repeat_times = 0;
       animation_linked_to    = "";
       animation_linked_frame = 0;       
    }            
