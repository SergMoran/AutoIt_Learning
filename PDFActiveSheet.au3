AutoItSetOption("SendKeyDelay", 200)
Sleep(3000)
;~ Send("^s")
;~ Sleep(2500)
;~ Вызов окна плеера
Send("^+7")
#CS Возможное окно
; Проект давно не сохранялся
 #CE
#CS If WinActivate("[CLASS:Chrome_WidgetWin_1]") Then
;
; ;~ Sleep(1000)
; ;~ Переход к 1 элементу списка
; 	Send("{TAB 6}")
;
; ;~ Запуск 1 элемента
; ;~ Send("{TAB 3}")
; ;~ Send("{ENTER}")
; EndIf
 #CE

 WinWaitActive("[CLASS:Chrome_WidgetWin_1]", "", 10)
 Send("{TAB 6}")
 send("{ENTER}")

;~ Закрытие окна плеера
;~ Sleep(8000)
#CS if WinActive("Проект давно не сохранялся") Then
; 	Send("{ENTER}")
; 	Sleep(5000)
; EndIf
 #CE
;~ WinClose("[CLASS:Chrome_WidgetWin_1]")

;~ Send("!{F4}")
;~ Запуск объединения
;~ if WinActivate("[CLASS:Chrome_WidgetWin_1]") Then
;~ 	WinClose("[CLASS:Chrome_WidgetWin_1]")
;~ EndIf
;~ WinWaitActive("[CLASS:Chrome_WidgetWin_1]","", 10)
WinClose("[CLASS:Chrome_WidgetWin_1]")

;~ Sleep(1000)

