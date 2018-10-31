#module custominput_m
	#deffunc custominput var INPUTSTR , int INPUT_KEY_CODE
		if INPUT_KEY_CODE=8{
			if strlen(INPUTSTR)!0{
				INPUTSTR=strmid(INPUTSTR,0,strlen(INPUTSTR)-1)
			}
			return 0
		}
		if INPUT_KEY_CODE>=65 & INPUT_KEY_CODE<=90{
			poke INPUTSTR,strlen(INPUTSTR),INPUT_KEY_CODE+32
			return 0
		}
		if INPUT_KEY_CODE=32{
			poke INPUTSTR,strlen(INPUTSTR),INPUT_KEY_CODE
			return 0
		}
		if INPUT_KEY_CODE>=48 & INPUT_KEY_CODE<=57{
			poke INPUTSTR,strlen(INPUTSTR),INPUT_KEY_CODE
			return 0
		}
	return -1
#global