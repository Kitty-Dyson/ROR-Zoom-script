;get the game's resolution
WinGetPos, rorX, rorY, rorW, rorH, Risk of Rain Returns

;set up click positions based on the width and height of the game.
MenuclickX := rorW * 0.5
MenuclickY := rorH * 0.5
1xX := rorW * 0.35
2xX := rorW * 0.43
zoomY := rorH * 0.49

;the hotkey
RCtrl & RShift::
{
	;set up "switch between 1 and 2 every time its pressed"
	zoomSwitch := !zoomSwitch
	
	;do the actual thingy, im clicking twice since it can be really fickle. the sleeptimes are important so it isnt faster than the game can handle. its super fast anyways tho.
	SetKeyDelay 0, 5,
	Send "{Esc}"
	Sleep 10
	Click %MenuclickX% %MenuclickY%
	Sleep 2
	Click %MenuclickX% %MenuclickY%
	Sleep 10
	if zoomSwitch {
		Click %1xX% %zoomY%
		Sleep 2
		Click %1xX% %zoomY%
	} else {
		Click %2xX% %zoomY%
		Sleep 2
		Click %2xX% %zoomY%
	}
	Sleep 5
	Send "{Esc}"
}