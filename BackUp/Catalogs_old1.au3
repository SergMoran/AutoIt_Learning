;~ Добавление библиотек
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>

GUICreate("Загрузка каталогов" , 400,600, -1, -1)
GUISetState(@SW_SHOW)
$Bt1 = GUICtrlCreateButton("HL", 10, 10, 120, 40)
;~ Sleep(10000)
;~ GUISetState(@SW_DISABLE)
While 1
   Switch GUIGetMsg()
	  Case $GUI_EVENT_CLOSE
		 Exit
	  Case $Bt1
;~ 		 MsgBox($MB_OKCANCEL, "", "Run")
		 ShellExecute("E:\Disk_Karst\Каталоги\Канализация\HL.pdf")
		 Exit
   EndSwitch
WEnd
