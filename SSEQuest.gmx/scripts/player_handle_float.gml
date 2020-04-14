// ==== FUNCTION ====================================================================
// scrPlayerHandleObjectFloatStart()
// ==================================================================================
// Ported from Time Twisted 2010

    var _ObjectHandle;

            _ObjectHandle = instance_nearest(x, y, obj_float_start);


    if (_ObjectHandle != noone) {
        if (player_collision_check(COL_MAIN_OBJECT, x, y, _ObjectHandle, -1, -1)) {
        
        state = STATE_FLOAT;
            }
        }
        

