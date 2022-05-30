;~ WinKill("Autodesk AutoCAD 2019")
WinActivate("Autodesk AutoCAD 2019")
send("+{F4}")
$a = WinActive("Autodesk AutoCAD 2019")
If $a Then
	ConsoleWrite("Its OK" & @CRLF & @CRLF & @CRLF)
EndIf
;~ ConsoleWrite($a & @CRLF)
;~ ConsoleWrite($a & @CRLF)