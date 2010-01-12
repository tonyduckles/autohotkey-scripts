;##############
;### WINAMP ###
; http://www.autohotkey.com/docs/misc/Winamp.htm
; http://www.autohotkey.com/forum/topic155.html
; http://www.autohotkey.com/forum/topic126.html
; Ctrl+Alt+Z/X/C/V/B/Up/Down/Left/Right = Control Winamp
^!z::
IfWinNotExist ahk_class Winamp v1.x
  return
; Otherwise, the above has set the "last found" window for use below.
;ControlSend, ahk_parent, z  ; Previous Track 
PostMessage, 0x111, 40044, , ,ahk_class Winamp v1.x  ; Previous Track
return

^!x::
IfWinNotExist ahk_class Winamp v1.x
  return
; Otherwise, the above has set the "last found" window for use below.
;ControlSend, ahk_parent, x  ; Play/Restart/UnPause
PostMessage, 0x111, 40045, , ,ahk_class Winamp v1.x  ; Play/Restart/UnPause
return

^!c::
IfWinNotExist ahk_class Winamp v1.x
  return
; Otherwise, the above has set the "last found" window for use below.
;ControlSend, ahk_parent, c  ; Pause/UnPause
PostMessage, 0x111, 40046, , ,ahk_class Winamp v1.x  ; Pause/UnPause
return

^!v::
IfWinNotExist ahk_class Winamp v1.x
  return
; Otherwise, the above has set the "last found" window for use below.
;ControlSend, ahk_parent, v  ; Stop
PostMessage, 0x111, 40047, , ,ahk_class Winamp v1.x  ; Stop
return

^!b::
IfWinNotExist ahk_class Winamp v1.x
  return
; Otherwise, the above has set the "last found" window for use below.
;ControlSend, ahk_parent, b  ; Next Track
PostMessage, 0x111, 40048, , ,ahk_class Winamp v1.x  ; Next Track
return

;^!Up::
;IfWinNotExist ahk_class Winamp v1.x
;  return
;; Otherwise, the above has set the "last found" window for use below.
;;ControlSend, ahk_parent, b  ; Next Track
;PostMessage, 0x111, 40058 , , ,ahk_class Winamp v1.x  ; Raise Volume
;PostMessage, 0x111, 40058 , , ,ahk_class Winamp v1.x  ; Raise Volume
;PostMessage, 0x111, 40058 , , ,ahk_class Winamp v1.x  ; Raise Volume
;PostMessage, 0x111, 40058 , , ,ahk_class Winamp v1.x  ; Raise Volume
;PostMessage, 0x111, 40058 , , ,ahk_class Winamp v1.x  ; Raise Volume
;return

;^!Down::
;IfWinNotExist ahk_class Winamp v1.x
;  return
;; Otherwise, the above has set the "last found" window for use below.
;;ControlSend, ahk_parent, b  ; Next Track
;PostMessage, 0x111, 40059 , , ,ahk_class Winamp v1.x  ; Lower Volume
;PostMessage, 0x111, 40059 , , ,ahk_class Winamp v1.x  ; Lower Volume
;PostMessage, 0x111, 40059 , , ,ahk_class Winamp v1.x  ; Lower Volume
;PostMessage, 0x111, 40059 , , ,ahk_class Winamp v1.x  ; Lower Volume
;PostMessage, 0x111, 40059 , , ,ahk_class Winamp v1.x  ; Lower Volume
;return

^!Left::
IfWinNotExist ahk_class Winamp v1.x
  return
; Otherwise, the above has set the "last found" window for use below.
;ControlSend, ahk_parent, z  ; Previous Track 
PostMessage, 0x111, 40044, , ,ahk_class Winamp v1.x  ; Previous Track
return

^!Right::
IfWinNotExist ahk_class Winamp v1.x
  return
; Otherwise, the above has set the "last found" window for use below.
;ControlSend, ahk_parent, b  ; Next Track
PostMessage, 0x111, 40048, , ,ahk_class Winamp v1.x  ; Next Track
return
