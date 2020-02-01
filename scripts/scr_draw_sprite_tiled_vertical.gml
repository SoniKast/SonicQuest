// ==== FUNCTION ====================================================================
// scr_draw_sprite_tiled_vertical(sprite, image, x, y);
// ==================================================================================

    var SpriteStart, SpriteEnd, SpriteCurrent, SpriteStep;
 
    // Retrieve sprite properties        
    SpriteStep  = sprite_get_height(argument0);
    SpriteStart = view_yview[i]+((argument3-view_yview[i]) mod SpriteStep)-SpriteStep;
    SpriteEnd   = view_yview[i]+view_hview[i]+SpriteStep;
        
    for (SpriteCurrent = SpriteStart; SpriteCurrent <= SpriteEnd; SpriteCurrent += SpriteStep)
        draw_sprite(argument0, argument1, argument2, SpriteCurrent);
