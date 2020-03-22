
    var decimalInput, currentNybble, hexResult;
// ------------------------------------------------------------------- //

    decimalInput    = argument0;
    currentNybble   = 0;
    hexResult       = "";
    
    if (decimalInput == 0) return "0";
    else while (decimalInput != 0)
    {
        // Get current nybble
        currentNybble = decimalInput&$F;
        
        // Add to the result
        switch(currentNybble)
        {
            case 10:
                hexResult = "A"+hexResult;
                break;
            case 11:
                hexResult = "B"+hexResult;
                break;
            case 12:
                hexResult = "C"+hexResult;
                break;
            case 13:
                hexResult = "D"+hexResult;
                break;
            case 14:
                hexResult = "E"+hexResult;
                break;
            case 15:
                hexResult = "F"+hexResult;
                break;
            default:
                hexResult = string(currentNybble)+hexResult;
        }
        
        // Delete current four bits
        decimalInput = (decimalInput >> 4);
    }
    
    return hexResult;
