#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Global $subject = "Заголовок", $sms = "Проверка"
Global $Wait = 10
Global $smsMessage = 'Тема: ' & $subject & @CRLF & 'Сообщение: ' & $sms & @CRLF & "Время до отправки SMS: "
Global $smsMessagEnd = "сек. " & @CRLF & @CRLF & "Нажмите Отмена, если Вы НЕ хотите получить эту СМС"
Global $smsWinTitle = "Оповещение SMS"

$nForm = GUICreate($smsWinTitle, 442, 147, 192, 124)
$Button1 = GUICtrlCreateButton("OK", 272, 112, 75, 25)
$Button2 = GUICtrlCreateButton("Отмена", 360, 112, 75, 25)
$Label1 = GUICtrlCreateLabel("", 8, 8, 420, 81)
GUISetState(@SW_SHOW)

$Begin = TimerInit()

While 1
    $nMsg = GUIGetMsg()
    Switch $nMsg
        Case $GUI_EVENT_CLOSE, $Button2
            Exit

        Case 0
            $vTime = $Wait - Round(Round(TimerDiff($Begin)) / 1024)
            GUICtrlSetData($Label1, "Времени осталось :" & $vTime)
            If $vTime = 0 Then
                $isSend = MsgBox( 1, $smsWinTitle, $smsMessage & $Wait & ' ' & $smsMessagEnd)
                Exit
            EndIf

    EndSwitch
WEnd