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

; Photos
#IF WinActive("ahk_exe ApplicationFrameHost.exe")
    ; Pan
    F16::MButton
#IfWinActive

; Blender
#If WinActive("ahk_exe blender.exe")
    ; Rotate
    F14::MButton
    ; Pan
    F16:: ;+MButton
        if GetKeyState("Shift")
            return
        Send {Shift down}
        Send {MButton down}
        return
    ; Release the Shift
    F16 Up::
        Send {Shift up}
        Send {MButton up}
        return
    ; Hold zoom
    F19:: ;^MButton
        if GetKeyState("Ctrl")
            return
        Send {Ctrl down}
        Send {MButton down}
        return
    ; Release the Ctrl
    F19 Up::
        Send {Ctrl up}
        Send {MButton up}
        return
    ; Select connected
    F18::l
    ; Focus selected
    F13::NumpadDot
    ; Camera view
    F15::Numpad0
    ; Toggle local view
    F17::NumpadDiv
#IfWinActive

; Substance Painter
#If WinActive("ahk_exe Substance Painter.exe")
    ; Rotate
    F14::MButton
    ; Pan
    F16::+MButton
    ; Hold zoom
    F19::^MButton
    ; Focus selected
    F13::f
    ; Next channel
    F15::c
    ; Previous channel
    F17::+c
    ; Show material
    F20::m
    ; Undo
    F21::^z
    ; Redo
    F22::^+z
#IfWinActive

; Substance Painter but Adobe
#If WinActive("ahk_exe Adobe Substance 3D Painter.exe")
    ; Rotate
    F14:: ;!LButton
        if GetKeyState("Alt")
            return
        Send {Alt down}
        Send {LButton down}
        return
    ; Release the Alt
    F14 Up::
        Send {Alt up}
        Send {LButton up}
        return
    ; Pan
    F16:: ;!MButton
        if GetKeyState("Alt")
            return
        Send {Alt down}
        Send {MButton down}
        return
    ; Release the Alt
    F16 Up::
        Send {Alt up}
        Send {MButton up}
        return
    ; Hold zoom
    F19:: ;!RButton
        if GetKeyState("Alt")
            return
        Send {Alt down}
        Send {RButton down}
        return
    ; Release the Alt
    F19 Up::
        Send {Alt up}
        Send {RButton up}
        return
    ; Focus selected
    F13::f
    ; Next channel
    F15::c
    ; Previous channel
    F17::+c
    ; Show material
    F20::m
    ; Undo
    F21::^z
    ; Redo
    F22::^+z
#IfWinActive

; Unity
#If WinActive("ahk_exe Unity.exe")
    ; Rotate
    F14:: ;!LButton
        if GetKeyState("Alt")
            return
        Send {Alt down}
        Send {LButton down}
        return
    ; Release the Alt
    F14 Up::
        Send {Alt up}
        Send {LButton up}
        return
    ; Pan
    F16::MButton
    ; Hold zoom
    F19:: ;!RButton
        if GetKeyState("Alt")
            return
        Send {Alt down}
        Send {RButton down}
        return
    ; Release the Alt
    F19 Up::
        Send {Alt up}
        Send {RButton up}
        return
    ; Focus selected
    F13::f
#IfWinActive

; Photoshop
#If WinActive("ahk_exe photoshop.exe")
    ; Hold down Alt key for using the color picker
    F14::
        if GetKeyState("Alt")
            return
        Send {Alt down}
        return
    ; Release the Alt key
    F14 Up::Send {Alt up}
    ; Hold down Space to pan
    F16::
        if GetKeyState("Space")
            return
        Send {Space down}
        Send {Click down}
        return
    ; Release the Space
    F16 Up::
        Send {Space up}
        Send {Click up}
        return
    ; Zoom
    F19::
        if GetKeyState("Z")
            return
        Send {Z down}
        Send {Click down}
        return
    ; Release the Z key
    F19 Up::
        Send {Z up}
        Send {Click up}
        return
    ; Undo
    F21::^z
    ; Redo
    F22::^+z
#IfWinActive

; PureRef
#If WinActive("ahk_exe PureRef.exe")
    ; Have to do it this way because of weird modifier key handling
    ; Pan
    F16::
        if GetKeyState("Shift")
            return
        Send {Shift down}
        Send {MButton down}
        return
    ; Release
    F16 Up::
        Send {Shift up}
        Send {MButton up}
        return
    ; Zoom
    F19::
        if GetKeyState("Ctrl")
            return
        Send {Ctrl down}
        Send {MButton down}
        return
    ; Release
    F19 Up::
        Send {Ctrl up}
        Send {MButton up}
        return
#IfWinActive

; CHITUBOX
#If WinActive("ahk_exe CHITUBOX_Basic.exe")
    ; Rotate
    F14::RButton
    ; Pan
    F16::MButton
#IfWinActive
