; ===== IPMI Clipboard Paster (AHK v2) =====
; Paste:  Ctrl+Alt+V
; Speeds: Ctrl+Alt+F1..F4  (Fast / Normal / Slow / Turtle)
; Abort:  Hold Esc (checked each character)

#SingleInstance Force

global gSleep := 80  ; ms per character (default)

; Speed profiles
^!F1::(gSleep := 25,  Tool("Speed: Fast (25 ms/char)"))
^!F2::(gSleep := 60,  Tool("Speed: Normal (60 ms/char)"))
^!F3::(gSleep := 120, Tool("Speed: Slow (120 ms/char)"))
^!F4::(gSleep := 200, Tool("Speed: Turtle (200 ms/char)"))

Tool(msg, ms := 900) {
    ToolTip(msg), SetTimer(() => ToolTip(), -ms)
}

; Paste (char-by-char) with Esc abort polling
^!v:: {
    if !ClipWait(2) {
        MsgBox "Clipboard is empty."
        return
    }
    text := A_Clipboard
    text := RegExReplace(text, "`r`n?", "`n")  ; normalize CR/LF -> LF

    for ch in StrSplit(text, "") {
        ; abort if Esc is physically down
        if GetKeyState("Esc","P") {
            Tool("Paste aborted")
            break
        }
        if (ch = "`n")
            Send "{Enter}"
        else
            SendText ch
        Sleep gSleep
    }
}
