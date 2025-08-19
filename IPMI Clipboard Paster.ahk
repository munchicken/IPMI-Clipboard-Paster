^!v:: {  ; Ctrl+Alt+V hotkey
    if !ClipWait(2) {
        MsgBox "Clipboard is empty."
        return
    }
    text := A_Clipboard
    SetKeyDelay(20, 20)  ; 20 ms between keystrokes
    Send text
}
