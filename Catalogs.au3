;~ Добавление библиотек
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>

; Расположение каталогов в зависимости от компьютера
;в данном варианте 2 компьютер напрямую не указывается

If @ComputerName = "SMD-HOME" Then
	$plumb_Dir = "E:\Disk_Karst\Каталоги\Канализация\"
	$vent_Dir = "E:\Disk_Karst\Каталоги\Вентиляция\"
	$heat_Dir = "E:\Disk_Karst\Каталоги\Отопление\"
Else
	$plumb_Dir = "E:\Install расчеты\C_H\Каталоги\Канализация\"
	$vent_Dir = "E:\Install расчеты\C_H\Каталоги\Вентиляция\"
	$heat_Dir = "E:\Install расчеты\C_H\Каталоги\Отопление\"

EndIf

;Размеры элементов GUI

$bt_width = 80
$bt_height = 30
$bt_width2 = 50
$bt_height2 = 20
$cmb_width = 110
$cmb_height = 30

;Создание окна

GUICreate("Загрузка каталогов", 400, 600, -1, -1)
GUISetState(@SW_SHOW)

;~ Группы

$gr1 = GUICtrlCreateGroup("Канализация", 5,5, 100, 590)
$gr2 = GUICtrlCreateGroup("Трубы", 115,5, 100, 590)
;~ ConsoleWrite($gr1)
GUICtrlSetFont($gr1, 12, 700, 2, "Arial Narrow")
GUICtrlSetFont($gr2, 12, 700, 2, "Arial Narrow")

;~ GUICtrlSetBkColor(
;~ $Label1 = GUICtrlCreateLabel("Label1", 248, 32, 36, 17)

$Bt1 = GUICtrlCreateButton("HL", 15, 30, $bt_width, $bt_height)
$Bt2 = GUICtrlCreateButton("Solo", 15, 70, $bt_width, $bt_height)
$Bt3= GUICtrlCreateButton("Ostendorf", 15, 110, $bt_width, $bt_height)
$Bt4 = GUICtrlCreateButton("HL", 15, 150, $bt_width, $bt_height)
$Bt5 = GUICtrlCreateButton("MiniOrange", 15, 190, $bt_width, $bt_height)
$Bt6 = GUICtrlCreateButton("", 15, 230, $bt_width, $bt_height)
$Bt7 = GUICtrlCreateButton("", 15, 270, $bt_width, $bt_height)
$Bt8 = GUICtrlCreateButton("", 15, 310, $bt_width, $bt_height)
$Bt9 = GUICtrlCreateButton("", 15, 350, $bt_width, $bt_height)
$Bt10 = GUICtrlCreateButton("", 15, 390, $bt_width, $bt_height)
$Bt11 = GUICtrlCreateButton("", 15, 430, $bt_width, $bt_height)
$Bt12 = GUICtrlCreateButton("", 15, 470, $bt_width, $bt_height)





$Bt21 = GUICtrlCreateButton("Danfos Balan.", 125, 30, $bt_width, $bt_height)
$Bt22 = GUICtrlCreateButton("Danfoss Valve", 125, 70, $bt_width, $bt_height)
$Bt23 = GUICtrlCreateButton("", 125, 110, $bt_width, $bt_height)
$Bt24= GUICtrlCreateButton("", 125, 150, $bt_width, $bt_height)
$Bt25= GUICtrlCreateButton("", 125, 190, $bt_width, $bt_height)
$Bt26= GUICtrlCreateButton("", 125, 230, $bt_width, $bt_height)
$Bt27 = GUICtrlCreateButton("", 125, 270, $bt_width, $bt_height)
$Bt28= GUICtrlCreateButton("", 125, 310, $bt_width, $bt_height)
$Bt29 = GUICtrlCreateButton("", 125, 350, $bt_width, $bt_height)
$Bt30 = GUICtrlCreateButton("", 125, 390, $bt_width, $bt_height)
$Bt31 = GUICtrlCreateButton("", 125, 430, $bt_width, $bt_height)
$Bt32 = GUICtrlCreateButton("", 125, 470, $bt_width, $bt_height)

;~ Выпадающая комбо бокс под Вентс
$label_Vents = GUICtrlCreateLabel("Вентс", 230, 10, 120, 20)
GUICtrlSetFont( -1, 10, 700, 2, "Arial Narrow")
$btVents = GUICtrlCreateButton("Open", 340, 40, $bt_width2, $bt_height2)
$cb1 = GUICtrlCreateCombo("",225, 40, $cmb_width, $cmb_height)
GUICtrlSetData($cb1, "Папка|ВКМ|ВКМц|ВКО|ВКП|ВКПФ|Квайт|ТТ|ТТ_Силента", "ВКМ")
Func _vents_cat ()
	$cb1_value = GUICtrlRead($cb1)
	Switch $cb1_value
		Case "Папка"
			Global $val = $vent_Dir & "Вентс"
		Case "ВКМ"
			Global $val = $vent_Dir & "Вентс\ВКМ.pdf"
		Case "ВКМц"
			Global $val = $vent_Dir & "Вентс\ВКМц.pdf"

		Case "ВКО"
			Global $val = $vent_Dir & "Вентс\ВКО.pdf"
		Case "ВКП"
			Global $val = $vent_Dir & "Вентс\ВКП.pdf"
		Case "ВКПФ"
			Global $val = $vent_Dir & "Вентс\ВКПФ.pdf"
		Case "Квайт"
			Global $val = $vent_Dir & "Вентс\Силента\Вентс Квайт1.pdf"

		Case "ТТ"
			Global $val = $vent_Dir & "Вентс\ТТ\61_239_cat_file.pdf"
		Case "ТТ_Силента"
			Global $val = $vent_Dir & "Вентс\ТТ\Сайлент М.pdf"



	EndSwitch
EndFunc
$label_Cond = GUICtrlCreateLabel("Кондиционеры", 230, 75, 120, 20)
GUICtrlSetFont( -1, 10, 700, 2, "Arial Narrow")
$btCond = GUICtrlCreateButton("Open", 340, 105, $bt_width2, $bt_height2)
$cb_cond = GUICtrlCreateCombo("",225, 105, $cmb_width, $cmb_height)
GUICtrlSetData($cb_cond, "Midea|Midea MKT|Idea|Idea Fanc Duct|Idea Fan Cass|ВКПФ|Квайт|ТТ|ТТ_Силента", "Midea")
;~ Каталоги по кондиционированию
Func _cond_cat ()
	$cb1_value = GUICtrlRead($cb_cond)
	Switch $cb1_value
		Case "Midea"
			 $val_cond = $vent_Dir & "Midea\2021\midea-catalog-2021-web_0.pdf"
		Case "Midea MKT"
			 $val_cond = $vent_Dir & "Midea\Фанкойлы MTK\03 Midea 50Hz AC Fan Coil Unit Two-pipe Duct Series -201606.pdf"
		Case "Idea"
			 $val_cond = $vent_Dir & "idea\Idea 2021.pdf"

		Case "Idea Fanc Duct"
			 $val_cond = $vent_Dir & "idea\Idea IKM фанкойлы\service_manual_idea_fcu_duct_horizontal_concealed.pdf"
		Case "Idea Fan Cass"
			 $val_cond = $vent_Dir & "idea\Idea IKM фанкойлы\service_manual_idea_fcu_ikdika_four-way_cassette.pdf"
		Case "ВКПФ"
			 $val_cond = $vent_Dir & "Вентс\ВКПФ.pdf"
		Case "Квайт"
			 $val_cond = $vent_Dir & "Вентс\Силента\Вентс Квайт1.pdf"

		Case "ТТ"
			 $val_cond = $vent_Dir & "Вентс\ТТ\61_239_cat_file.pdf"
		Case "ТТ_Силента"
			 $val_cond = $vent_Dir & "Вентс\ТТ\Сайлент М.pdf"



	EndSwitch
	Return $val_cond
EndFunc
;~ Sleep(1000)
;~ GUISetState(@SW_DISABLE)
;~ Реакция на кнопки
;~ ============================
While 1
	$id_GUIMsg = GUIGetMsg()
	Switch $id_GUIMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Bt1
		 	ShellExecute($plumb_Dir & "HL.pdf")
;~ 			WinWaitActive("HL - PDF-XChange Editor")
;~ 			ShellExecute("E:\Google_smd\WorkOptions\AutoitScripts\Learning\pdf_regen.au3")
;~ 			Exit
		Case $Bt2
			ShellExecute($plumb_Dir & "Grundfoss\Grundfosliterature-3565784.pdf")
;~ 			Exit
		Case $Bt3
			ShellExecute($plumb_Dir & "Ostendorf_Catalog.pdf")
;~ 			Exit
		Case $Bt4
			ShellExecute($plumb_Dir & "HL.pdf")
;~ 			Exit

		Case $Bt5
			ShellExecute($plumb_Dir & "AGM0047-RU-MiniOrange_0.pdf")
;~ 			Exit

;~ Heating
;~ =====================================================================================

		Case $Bt21
			ShellExecute($heat_Dir & "Danfoss\2018\Балансиры catalog_2018_ua.pdf")
;~ 			Exit
		Case $Bt22
			ShellExecute($heat_Dir & "Danfoss\2018\cat_HVAC_2018.pdf")
;~ 			Exit
;~ Общие кнопки
;~ ====================================================================================
;~ 		Кнопка запуска каталогов Вентса
		Case $btVents
			_vents_cat()
			ShellExecute($val)
;~ 			Exit
;~ Кнопка запуска каталога кондиционеры
		Case $btCond
			$catalog = _cond_cat()
			ShellExecute($catalog)
;~ 			Exit


	EndSwitch
WEnd
