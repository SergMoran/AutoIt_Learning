

$res = ""
$a = ProcessList()
;~ For $i = 1 To $a[0][0]
;~         $res = $res & " " & $a[$i][0] & @CRLF & "PID: " & $a[$i][1]
;~ Next
;~ MsgBox($MB_SYSTEMMODAL, "", $res)
;~ $filePath = "d:\01\process.txt"
;~ $file = FileOpen($filePath,2)
;~ FileWrite($file, $res)

;~ FileClose($file)


;~ $b = ProcessExists("TOTALCMD64.EXE")
;~ ConsoleWrite($b & @CRLF& @CRLF)
While ProcessExists("TOTALCMD64.EXE")
	ProcessClose("TOTALCMD64.EXE")
WEnd

;~ ProcessClose("PDFXEdit.exe")
;~ ProcessClose("spotify.exe")
;~ ProcessClose("Telegram.exe")

;~ SplashTextOn

;~ Run("C:\TCMI\TOTALCMD64.EXE","", @SW_MAXIMIZE)
;~ ShellExecute("C:\TCMI\TOTALCMD64.EXE")