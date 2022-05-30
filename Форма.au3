#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
;~ #Region ### START Koda GUI section ### Form=E:\Google_smd\Autoit\koda_1.7.2.0\Forms\Form1.kxf
$Form1 = GUICreate("Form1", 497, 349, 192, 124)
$Button1 = GUICtrlCreateButton("Button1", 24, 16, 129, 25, $WS_GROUP)
$Button2 = GUICtrlCreateButton("Button1", 24, 56, 129, 25, $WS_GROUP)
GUISetState(@SW_SHOW)
;~ #EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd

