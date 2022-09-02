#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2 ; A window's title can contain WinTitle anywhere inside it to be a match
#MaxHotkeysPerInterval 300 ; Specifies the rate of hotkey activations
#InstallMouseHook ; Forces the unconditional installation of the mouse hook

; ^ => Ctrl
; ! => Alt
; + => Shift

; Switch desktop right
WheelRight::#^Right
; Switch desktop left
WheelLeft::#^Left

; Visual Studio
#If WinActive("ahk_exe devenv.exe")
    ; Forward
    XButton1::^-
    ; Backward
    XButton2::^+-
    ; Go to definition
    F18::F12
    ; Step over
    F13::F10
    ; Step into
    F15::F11
    ; Run / Debug Continue
    F17::F5
    ; Set breakpoint
    F20::F9
#IfWinActive

; Microsoft Teams
#If WinActive("ahk_exe Teams.exe")
    ; Override BS hotkeys
    ^+u::Right
    ^+c::Right
    ; Toggle microphone mute
    F20::^+M
    ; Toggle camera
    F21::^+O
#IfWinActive

; F18::1