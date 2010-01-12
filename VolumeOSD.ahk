; Volume On-Screen-Display (OSD) -- by Rajat
; http://www.autohotkey.com
; This script assigns hotkeys of your choice to raise and lower the
; master and/or wave volume.  Both volumes are displayed as different
; color bar graphs.

;_________________________________________________ 
;_______User Settings_____________________________ 

; Make customisation only in this area or hotkey area only!!

; The percentage by which to raise or lower the volume each time:
vol_Step = 4

; How long to display the volume level bar graphs:
vol_DisplayTime = 2000

; Master Volume Bar color (see the help file to use more
; precise shades):
vol_CBM = Lime

; Background color; for transparent, set to 111111
vol_CW = 111111

; Bar's screen position.  Use -1 to center the bar in that dimension:
vol_PosX = -1
vol_PosY = 600
vol_Width = 400  ; width of bar
vol_Thick = 20   ; thickness of bar

; If your keyboard has multimedia buttons for Volume, you can
; try changing the below hotkeys to use them by specifying
; Volume_Up, ^Volume_Up, Volume_Down, and ^Volume_Down:
;HotKey, Volume_Up, vol_MasterUp
;HotKey, Volume_Down, vol_MasterDown

HotKey, #Up, vol_MasterUp        ; Win+UpArrow
HotKey, #Down, vol_MasterDown
HotKey, ^!Up, vol_MasterUp       ; Ctrl+Alt+UpArrow
HotKey, ^!Down, vol_MasterDown


;___________________________________________
;_____Auto Execute Section__________________

; DON'T CHANGE ANYTHING HERE (unless you know what you're doing).

COM_Init()

vol_BarOptionsMaster = 1 ZH%vol_Thick% ZX0 ZY0 W%vol_Width% CB%vol_CBM% CW%vol_CW%
;vol_BarOptionsMaster = 1 ZH%vol_Thick% ZX0 ZY0 W%vol_Width%

; If the X position has been specified, add it to the options.
; Otherwise, omit it to center the bar horizontally:
if vol_PosX >= 0
{
    vol_BarOptionsMaster = %vol_BarOptionsMaster% X%vol_PosX%
}

; If the Y position has been specified, add it to the options.
; Otherwise, omit it to have it calculated later:
if vol_PosY >= 0
{
    vol_BarOptionsMaster = %vol_BarOptionsMaster% Y%vol_PosY%
}

#SingleInstance
SetBatchLines, 10ms
Return


;___________________________________________

vol_MasterUp:
vol_tmp := VA_GetMasterVolume()
vol_Master := (vol_tmp + vol_Step)
VA_SetMasterVolume(vol_Master)
Gosub, vol_ShowBars
return

vol_MasterDown:
vol_tmp := VA_GetMasterVolume()
vol_Master := (vol_tmp - vol_Step)
VA_SetMasterVolume(vol_Master)
Gosub, vol_ShowBars
return

vol_ShowBars:
; To prevent the "flashing" effect, only create the bar window if it
; doesn't already exist:
IfWinNotExist, vol_Progress
{
    ; Calculate position here in case screen resolution changes while
    ; the script is running:
    Progress, %vol_BarOptionsMaster%, , , vol_Progress
    ;WinSet, TransColor, 111111, vol_Progress
}
; Get the volume in case the user or an external program changed them:
vol_Master := VA_GetMasterVolume()
Progress, 1:%vol_Master%
SetTimer, vol_BarOff, %vol_DisplayTime%
return

vol_BarOff:
SetTimer, vol_BarOff, off
Progress, 1:Off
return