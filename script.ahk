; adapted from //www.autohotkey.com/board/topic/103174-dual-function-control-key/?p=638129
#Requires AutoHotkey v2.0-beta
#SingleInstance
global state:=0
InstallKeybdHook
$~*Ctrl:: {
	global state
	if (!state){ 
		state :=  (GetKeyState("Shift", "P") ||  GetKeyState("Alt", "P") || GetKeyState("LWin", "P") || GetKeyState("RWin", "P"))
	}
}
