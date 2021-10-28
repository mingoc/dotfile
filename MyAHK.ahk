;  control - ^
;  alt -   !    
;  shift  +
;  win    #
;  space means space bar



; run the umlaut.ahk
Run "C:\dotfiles\umlaut.ahk"



; 
; Must configure 1. In QQ input config, set Ctrl+9 to QQ input; 2. In windows language hot key, set Ctrl +9 to QQ input; Ctrl + shift + 8 to English input
; in windows, Languge-> Administrative language setting -> copy setting -> Check the welcome screen ... and New user accounts.
CapsLock::    ; CapsLock to swith the input method
   InputLocaleID := DllCall("GetKeyboardLayout","UINT",DllCall("GetWindowThreadProcessId","UINT",WinActive("A"),"UINTP",0),UInt)
   ; MsgBox, %InputLocaleID% ；； for debug
   
   if (InputLocaleID=67707904 or InputLocaleID = 67699721)      ;; This means current is English input    
     Send ^9    ;; 切換為中文輸入;; `` means send 1 `            	  
   else    
     Send ^+8  ;; 切換為英文輸入   	
   return
   


; it allows to make a rule which is appliedonly when windows contains the given title
; use winspy to check,the windows for vscode is: ahk_exe Code.exe
; SetTitleMatchMode, 2 
#IfWinActive, ahk_exe Code.exe
!Space::   
    ;MsgBox, %InputLocaleID% ；； for debug   
    Send +!2
Return          
#If 
;;;;;;;;;;;;;;;;;;;


; for vscode emace mark active  
;!space::    
;  Send !+2
;  return




; swap mouse left and right - mapped to F12
#F12::
    buttonState := DllCall("user32.dll\SwapMouseButton", "UInt", 1)
    if buttonState <> 0
    {
        buttonState := DllCall("user32.dll\SwapMouseButton", "UInt", 0)
    }
    return


; ALT + Z to save screen shot of current window
!z::
Send #!{PrintScreen}
return


!j::
SetTitleMatchMode, 2
IfWinNotExist, Google Translate 
{   
  run, c:\p\Google_Translate.lnk
  return
}
else
{
  WinActivate, Google Translate
  Send !d
  Send !f
  return
}

^i::
SetTitleMatchMode, 2
WinActivate, Kindle PC
Send ^f
return


^2::
Send !2
return

^3::
Send !3
return

^4::
Send !4
return

^5::
Send !5
return

^6::
Send !6
return

^7::
Send !7
return



^p::
Send !p
return

; English - Chinese Input switch

#SingleInstance Force


; you must configure in Windows-> Language preference -> Input language hot key: set
; Control+` to English
; Control+shift+9 to Chinse

;^,:: 
;  Send ^+8  ; Control+shift+8 to English
;  return

;^.::
;   Send ^+9   ;Control+shift+9 to Chinse
;  return


^space::    ; CapsLock to swith the input method
   InputLocaleID := DllCall("GetKeyboardLayout","UINT",DllCall("GetWindowThreadProcessId","UINT",WinActive("A"),"UINTP",0),UInt)
   ; MsgBox, %InputLocaleID
   
   if InputLocaleID=67699721      ;; This means current is English input
    Send ^``    ;; 切換為中文輸入 ;  `` means send 1 `
   else
    Send ^+8  ;; 切換為英文輸入
   return


;;


;^!j::
;Run, "C:\p\CheckPoint\TrGUI.exe"
;;WinWait,, Seek
;Sleep, 1000
;ControlSend, ,"1!vp@n95{Enter}", ahk_exe TrGUI.exe
;


;^!j::
;Run, "%windir%\system32\notepad.exe"
;WinWait,, Seek
;Sleep, 1000
;ControlSend, ,{Raw}1!vp@n95{Enter}, ahk_exe notepad.exe











