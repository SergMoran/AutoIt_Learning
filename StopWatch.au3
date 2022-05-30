#NoTrayIcon
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#AutoIt3Wrapper_Icon=D:\Bilder\icons\alarm.ico ;Icon is attached to forum post, change to correct path
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Stopwatch", 219, 87, 192, 124, -1, $WS_EX_TOPMOST)
$b_start = GUICtrlCreateButton("Start", 8, 56, 59, 25)
$b_pause = GUICtrlCreateButton("Pause", 80, 56, 59, 25)
$b_reset = GUICtrlCreateButton("Reset", 152, 56, 59, 25)
$l_timer = GUICtrlCreateLabel("00:00:00", 0, 16, 219, 33, $SS_CENTER)
GUICtrlSetFont(-1, 18, 800, 0, "MS Sans Serif")
GUICtrlSetColor(-1, 0x000000)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Global $state = "Idle", $timer, $render_timer, $saved_time = 0

While 1
    $nMsg = GUIGetMsg()
    Switch $nMsg
        Case $GUI_EVENT_CLOSE
            Exit
        Case $b_start
            start_timer()
        Case $b_pause
            pause_timer()
        Case $b_reset
            reset_timer()
    EndSwitch
    If $state == "Running" And TimerDiff($render_timer) >= 40 Then renderTime()
WEnd

Func start_timer()
    If $state == "Idle" Then
        Global $timer = TimerInit(), $state = "Running", $render_timer = TimerInit()
    EndIf
EndFunc

Func pause_timer()
    If $state == "Running" Then
        $state = "Paused"
        $saved_time = TimerDiff($timer) + $saved_time
        GUICtrlSetData($b_pause, "Resume")
    ElseIf $state == "Paused" Then
        $state = "Running"
        $timer = TimerInit()
        GUICtrlSetData($b_pause, "Pause")
    EndIf
EndFunc

Func reset_timer()
    Global $timer = "", $state = "Idle", $render_timer = "", $saved_time = 0
    GUICtrlSetData($l_timer, "00:00:00")
    GUICtrlSetData($b_pause, "Pause")
EndFunc

Func renderTime()
    Local $diff = TimerDiff($timer) + $saved_time
    Local $sec = Int(Mod($diff/1000, 60))
    Local $min = Int(Mod($diff/60000, 60))
    Local $hour = Int($diff/3600000)
    If $sec < 10 Then $sec = "0"&$sec
    If $min < 10 Then $min = "0"&$min
    If $hour < 10 Then $hour = "0"&$hour
    GUICtrlSetData($l_timer, $hour&":"&$min&":"&$sec)
    $render_timer = TimerInit()
EndFunc