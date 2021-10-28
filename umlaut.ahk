#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTimer,UPDATEDSCRIPT,1000
UPDATEDSCRIPT:
FileGetAttrib,attribs,%A_ScriptFullPath%
IfInString,attribs,A
{
FileSetAttrib,-A,%A_ScriptFullPath%
SplashTextOn,,,Script was updated,
Sleep,500
Reload
}
Return
#SingleInstance, Force

OSD(text)
{
#Persistent
Progress, hide x1050 Y900 b1 w150 h27 zh0 FM10 cwEEEEEE ct111111,, %text%, AutoHotKeyProgressBar, Verdana BRK
WinSet, TransColor, 000000 120, AutoHotKeyProgressBar
Progress, show
SetTimer, RemoveToolTip, 1000
Return
RemoveToolTip:
SetTimer, RemoveToolTip, Off
Progress, Off
return
}

RAlt & a::
{
;If GetKeyState("Ctrl","P")
		If GetKeyState("Shift","P")
			Send Ä
		else
			Send ä
return
}

RAlt &  u:: 
{
;If GetKeyState("Ctrl","P")
		If GetKeyState("Shift","P") 
			Send Ü
		else
			Send ü
return
}

RAlt & o:: 
{
;If GetKeyState("Ctrl","P")
	if GetKeyState("Shift","P")
		Send Ö
	else
		Send ö
return
}

RAlt &  s:: 
{
;If GetKeyState("Ctrl","P")
	Send ß
return
}

RAlt &  e:: 
{
;If GetKeyState("Ctrl","E")
	Send €
return
}

RAlt & F7::
Send {Media_Prev}
return

RAlt & F8::
Send {Media_Next}
return
