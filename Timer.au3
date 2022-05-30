#include <Date.au3>
;~ $starttime = FileRead("D:\03\grills.txt")
$starttime = _NowCalc()
ConsoleWrite($starttime & @CRLF)
Sleep(3000)
$runtime = _DateDiff('s', $starttime, _NowCalc())
ConsoleWrite($runtime & @CRLF)