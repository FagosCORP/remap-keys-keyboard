#NoEnv  ; Recomendado para desempenho e compatibilidade com futuras versões do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório de início consistente.


#IfWinNotActive,ahk_group WorkIn
*CapsLock::
    Send {Blind}{Ctrl Down}
    cDown := A_TickCount
Return

*CapsLock up::
    If ((A_TickCount-cDown) < 150){
        Send {Blind}{Ctrl Up}{Esc}
    }
    Else {
        Send {Blind}{Ctrl Up}
    }
Return
#IfWinNotActive
