#include <MsgBoxConstants.au3>
#include <FileConstants.au3>

;~ $b = ProcessExists("TOTALCMD64.EXE")
;~ ConsoleWrite($b & @CRLF& @CRLF)
;~ While ProcessExists("TOTALCMD64.EXE")
;~ 	ProcessClose("TOTALCMD64.EXE")
;~ WEnd

While ProcessExists("viber.EXE")
	ProcessClose("viber.EXE")
WEnd


While ProcessExists("obsidian.EXE")
	ProcessClose("obsidian.EXE")
WEnd

While ProcessExists("TOTALCMD64.EXE")
	ProcessClose("TOTALCMD64.EXE")
WEnd

While ProcessExists("PDFXEdit.exe")
	ProcessClose("PDFXEdit.exe")
WEnd

While ProcessExists("Vivaldi.exe")
	ProcessClose("Vivaldi.exe")
WEnd

While ProcessExists("Spotify.exe")
	ProcessClose("Spotify.exe")
WEnd