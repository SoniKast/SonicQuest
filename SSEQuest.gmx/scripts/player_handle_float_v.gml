// ==== FUNCTION ====================================================================
// scrPlayerHandleObjectFloatStartV()
// ==================================================================================
// Ported from Time Twisted 2010

    var _ObjectHandle2;

            _ObjectHandle2 = instance_nearest(x, y, obj_float_start_v);


    if (_ObjectHandle2 != noone) {
        if (player_collision_check(COL_MAIN_OBJECT, x, y, _ObjectHandle2, -1, -1)) {
        
        state = STATE_FLOAT_V;
            }
        }
