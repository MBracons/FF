RandSleep(x, y) {
    Random, rand, % x, % y
    Sleep, % rand
}

GroupAdd, FFXIV, ahk_exe ffxiv_dx11.exe  ; Asegúrate de que el nombre del ejecutable es correcto.

#IfWinActive ahk_group FFXIV
{
    $1:: 
    $2:: 
    $3:: 
    $4::
    $5::
    $6:: 
    $7:: 
    $e:: 
    $r:: 
    $q:: 
    $º::
    $g::
    $x::
    hk := SubStr(A_ThisHotkey, 0)
    While GetKeyState(hk, "P")
    {
        Send %hk% 
        RandSleep(50, 100)
    }
    return

    $NumpadSub::
    Send {NumpadSub}
    RandSleep(50, 100)
    return

    !1:: 
    !2:: 
    !3:: 
    !4:: 
    !5::
    !5:: 
    !6:: 
    !7:: 
    !e::
    !r:: 
    !q:: 
    !º::
    !x::
    hk := SubStr(A_ThisHotkey, 1)
    SendInput, {LAlt Down}%hk%{LAlt up}
    RandSleep(50, 100)
    return

    !NumpadSub::
    SendInput, {LAlt Down}{NumpadSub}{LAlt up}
    RandSleep(50, 100)
    return
}

$Numpad2::  ; Hotkey para suspender/reanudar el script
    Suspend, Toggle
    return
