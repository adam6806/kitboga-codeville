; Originally authored by DangerBK
; This script replaces syskey anywhere it is typed BEFORE the enter key gets pressed to a random phrase.
; Stop script with {Control + Windows + Alt + NumpadSub}

#SingleInstance force
#Persistent
#NoTrayIcon
#UseHook

:*:syskey::
	Random, rand, 0, 9
	if (rand < 2) {
		SendInput scammer
	} else if (rand < 4) {
		SendInput stop scamming
	} else if (rand < 6) {
		SendInput I'm fool here bro?
	} else if (rand < 8) {
		SendInput Disconnect the call
	} else {
		SendInput Don't even try it scrub.
	}
return

;***** Hotkey to End script *****
!#^NumpadSub::ExitApp