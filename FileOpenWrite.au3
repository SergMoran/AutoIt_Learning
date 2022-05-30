#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>

$f_path = "D:\06\RVTLog.txt"
$fl = FileOpen($f_path,  $FO_APPEND)
ConsoleWrite($fl & @CRLF)
For $a = 1 To 3
	$txt = "Dfcz"
	ConsoleWrite($txt & @CRLF)
	FileWrite($fl, $txt)
	Sleep(3000)


Next
;~ FileClose($fl)
;~ ShellExecute($fl)
