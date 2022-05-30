Func _tlp()
	ToolTip("Сейчас будет сохранение файла", 50,50, "Инфо", 1, 1)
	Sleep(4000)
	ToolTip("")
EndFunc

While 1
	_tlp()
	Sleep(10000)
WEnd
;~ MsgBox