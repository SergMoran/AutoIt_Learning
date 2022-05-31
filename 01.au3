;~ Sleep(7000)
;~ Func sm_PG_Text()
;~    Send("{TAB}{HOME}{DOWN 37}")
;~ EndFunc

;~ Send("^{F3}")
;~ Sleep(300)
;~ Send("!�")
;~ Send("!�")
;~ Sleep(300)
;~ Send("!�")
;~ Sleep(500)
;~ Send("{DOWN 7}{TAB}")
;~ Send("{ENTER}{TAB}")
;~ sm_PG_Text()
; This will create a tooltip in the upper left of the screen

;~ ToolTip("This is a tooltip", 0, 0)
;~ Sleep(4000) ; Sleep to give tooltip time to display
;~ MsgBox(1,"Ku", "Privet", 3)
$mb1 = MsgBox(1, "Try", "Тест окошка")
;~ ConsoleWrite($mb1)
SplashTextOn("", $mb1)
sleep(5000)
;~ Новый комментарий