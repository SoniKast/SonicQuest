/*
    var counterReference;
    counterReference = interfaceFindControl(interfaceReference, "Counter01");

    if (!variable_global_exists("soundtestlist")) {
        global.soundtestlist = ds_list_create();
    }
    if (ds_list_size(global.soundtestlist) >= 5) {
        ds_list_delete(global.soundtestlist,0);
    }
    ds_list_add(global.soundtestlist,counterReference.counterValue);
    menuOptionsCheckForCheats();
        
    if (counterReference.counterValue == 0) 
    {
        sound_stop(global.music);
        global.music = bgmOptions;
        sound_loop(global.music);
        exit;  
    }
    else if (counterReference.counterValue <= 16)
    {
        execute_string("global.music = bgmMusic"+string_format_zero(string(counterReference.counterValue), 2)+";"+"sound_volume(global.music, 0.8); sound_play(global.music);");
    }
    else {
        var mysound, soundgot;
        mysound = "";
        soundgot = true;
        switch (counterReference.counterValue) {
            case 17: mysound = bgmOptions; break;
            case 18: mysound = bgmExtraLife; break;
            case 19: mysound = bgmCountdown; break;
            case 20: mysound = bgmGameOver; break;
            case 21: mysound = sndAir; break;
            case 22: mysound = sndEmeraldGet; break;
            case 23: mysound = sndRing; break;
            case 24: mysound = sndRingLoss; break;
            case 25: mysound = sndSpring; break;
            case 26: mysound = sndWaterSplash; break;
            case 27: mysound = sndLevelFinishedChime; break;
            case 28: mysound = sndLevelFinishedThroughPost; break;
            case 29: mysound = sndTallyFinished; break;
            case 30: mysound = sndBossBang; break;
            case 31: mysound = sndBossHit; break;
            case 32: mysound = sndBossLaser; break;
            case 33: mysound = sndBossLaserFire; break;
            case 34: mysound = sndShieldNormalGet; break;
            case 35: mysound = sndShieldFireGet; break;
            case 36: mysound = sndShieldFireUse; break;
            case 37: mysound = sndShieldElectricityGet; break;
            case 38: mysound = sndShieldElectricityUse; break;
            case 39: mysound = sndShieldWaterGet; break;
            case 40: mysound = sndShieldWaterUse; break;
            case 41: mysound = sndBumper; break;
            case 42: mysound = sndCheckpoint; break;
            case 43: mysound = sndExplosion; break;
            case 44: mysound = sndExplosion2; break;
            case 45: mysound = sndSwitch; break;
            case 46: mysound = sndDrown; break;
            case 47: mysound = sndGrab; break;
            case 48: mysound = sndHurt; break;
            case 49: mysound = sndJump; break;
            case 50: mysound = sndSkid; break;
            case 51: mysound = sndSlideJump; break;
            case 52: mysound = sndSpin; break;
            case 53: mysound = sndSpindash; break;
            case 54: mysound = sndSpindashRelease; break;
            default: soundgot = false; break;
        }
        if (soundgot) {
            sound_stop(global.music);
            global.music = mysound;
            sound_play(global.music);
        }        
    }

