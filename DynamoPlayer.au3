AutoItSetOption("SendKeyDelay", 100)
$Loc_Dir1 = "E:\Google_smd\Python\Files\"
$Loc_Dir2 = "E:\Google_smd\Python\Work scripts\"
Sleep(3000)
;~ Send("^s")
;~ Sleep(2500)
;~ Вызов окна плеера
Send("^+7")
Sleep(1000)
;~ Переход к второму элементу списка
Send("{TAB 6}")

;~ Запуск 2 элемента
Send("{TAB 3}")
Send("{ENTER}")

;~ Закрытие окна плеера
Sleep(25000)

;~ Send("!{F4}")
;~ Запуск объединения
WinClose("[CLASS:Chrome_WidgetWin_1]")

ShellExecute($Loc_Dir1 & "пдф2_объединение.py")
Sleep(2000)
ShellExecute($Loc_Dir2 & "deleteFileesFolderPrint.pyw")