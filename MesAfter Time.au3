AutoItSetOption("WinTitleMatchMode", 2)
;~ Sleep(4000)
While 1
	$a = WinActive("Vivaldi")
	if $a Then
		MsgBox(1, "Viva", $a, 3)
;~ 		MouseClick("le
	Else
		MsgBox(1, "ppc", $a, 3)

	EndIf
	Sleep(6000)

WEnd