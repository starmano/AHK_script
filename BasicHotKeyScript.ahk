#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; **************************************************************************************
;
; For easier navigation, check out file: ~~BasicHotKeyList.txt~~
;
; **************************************************************************************
; KATEGORIJE - CATEGORIES:
;	- mapa - folder
;	- website
;	- program - app
;	- text
;	- 
;	-
; **************************************************************************************
; 00.	HotKeys [mapa - folder]
^+h:: ;
if !(hWnd := WinExist("HotKeys"))
    run, C:\Users\Oskar Starman\Desktop\Shortcuts\Hotkeys\
else
{
    WinGet MMX, MinMax, ahk_id %hWnd%
    if (hWnd = WinExist("A"))
        WinClose, ahk_id %hwnd%
    else
    {
        if (MMX = -1)
            WinMaximize, ahk_id %hWnd%
        if (MMX = 1)
            WinMinimize, ahk_id %hWnd%
        if (MMX = 0)
            WinActivate, ahk_id %hWnd%
    }
}
return

; 01.	Avtomatiziran odgovor [text]

;** ZVEZDAN **
;Moje ime je Zvezdan,{enter}in v čast vam je da ste me spoznal{enter}Hiša na betonu,{enter}polna alkohola,{enter}Vse me ženske hočejo,{enter}makina do jaja.{enter}Vozm se po mestu,{enter}moj komad se rola,{enter}naj ta feeling traja{enter}Js sm car.{enter}Ne pa ne{enter}Ja pa ja, evo ti ga na {enter} Plesko si zaslužila{enter}Zdej k sm legenda,{enter}vsi me že poznajo,{enter}ustavlajo me v mestu{enter}hočjo avtograme.{enter}Pišejo po fejsu,{enter}kenslam jim objave{enter}vse me pičke gnjave{enter}

^+v::
Send,  Avtomatiziran odgovor, trenutno ne morem odgovoriti, prosim poskusi kasneje {enter}
return

; 02.	Discord [program - app]
^+d:: 
Process, Exist, discord.exe
If !ErrorLevel ; is not running
{
 Run, "C:\Users\Oskar Starman\AppData\Roaming\Microsoft\Windows\Start Menu\program - apps\Discord Inc\Discord"
  return
}
 pid := ErrorLevel
IfWinNotActive, % "ahk_pid " pid
 WinActivate, % "ahk_pid " pid
else
 WinMinimize, % "ahk_pid " pid
  return

; 03.	Chrome [program - app]
^+c::
Process, Exist, chrome.exe
If !ErrorLevel ; is not running
{
 Run, chrome.exe
  return
}
 pid := ErrorLevel
IfWinNotActive, % "ahk_pid " pid
 WinActivate, % "ahk_pid " pid
else
 WinMinimize, % "ahk_pid " pid
  return

; 04.	svn/RT1920 [mapa - folder]
^+s:: ;
if !(hWnd := WinExist("RT1920"))
    run, C:\Users\Oskar Starman\Desktop\RT1920\
else
{
    WinGet MMX, MinMax, ahk_id %hWnd%
    if (hWnd = WinExist("A"))
        WinClose, ahk_id %hwnd%
    else
    {
        if (MMX = -1)
            WinMaximize, ahk_id %hWnd%
        if (MMX = 1)
            WinMinimize, ahk_id %hWnd%
        if (MMX = 0)
            WinActivate, ahk_id %hWnd%
    }
}
return

; 05.	Files [mapa - folder]
^+f:: 
if !(hWnd := WinExist("Files"))
    run, C:\Users\Oskar Starman\Desktop\Files\
else
{
    WinGet MMX, MinMax, ahk_id %hWnd%
    if (hWnd = WinExist("A"))
        WinClose, ahk_id %hwnd%
    else
    {
        if (MMX = -1)
            WinMaximize, ahk_id %hWnd%
        if (MMX = 1)
            WinMinimize, ahk_id %hWnd%
        if (MMX = 0)
            WinActivate, ahk_id %hWnd%
    }
}
return

; 06.	Torrenti [mapa - folder]
^+t::
if !(hWnd := WinExist("Torrenti"))
    run, D:\Torrenti\
else
{
    WinGet MMX, MinMax, ahk_id %hWnd%
    if (hWnd = WinExist("Torrenti"))
        WinClose, ahk_id %hwnd%
    else
    {
        if (MMX = -1)
            WinMaximize, ahk_id %hWnd%
        if (MMX = 1)
            WinMinimize, ahk_id %hWnd%
        if (MMX = 0)
            WinActivate, ahk_id %hWnd%
    }
}
return

; 07.	Open Chrome, New Tab, Partis [website]
^!p::
Run chrome.exe partis.si
return

; 08.	Open Chrome, New Tab, G-Mail [website]
^!m::
Run chrome.exe mail.google.com
return

; 09.	Open Chrome, New Tab, YouTube [website]
^!y::
Run chrome.exe youtube.com 
return

; 10.	MS Teams [program - app]
#+t::
Process, Exist, Teams.exe
If !ErrorLevel ; is not running
{
 Run, "C:\Users\Oskar Starman\AppData\Roaming\Microsoft\Windows\Start Menu\program - apps\Microsoft Teams"
  return
}
 pid := ErrorLevel
IfWinNotActive, % "ahk_pid " pid
 WinActivate, % "ahk_pid " pid
else
 WinMinimize, % "ahk_pid " pid
  return

; 11.	MS Word [program - app]
#+w::
Process, Exist, "C:\program - app Files\Microsoft Office\root\Office16\WINWORD.EXE"
If !ErrorLevel ; is not running
{
 Run, "C:\program - app Files\Microsoft Office\root\Office16\WINWORD.EXE"
  return
}
 pid := ErrorLevel
IfWinNotActive, % "ahk_pid " pid
 WinActivate, % "ahk_pid " pid
else
 WinMinimize, % "ahk_pid " pid
  return

; 12.	MS Excel [program - app]
#+e::
Process, Exist, excel.exe
If !ErrorLevel ; is not running
{
 Run, excel.exe
  return
}
 pid := ErrorLevel
IfWinNotActive, % "ahk_pid " pid
 WinActivate, % "ahk_pid " pid
else
 WinMinimize, % "ahk_pid " pid
  return

; 13.	MS Visual Studio [program - app]
#+v::
Process, Exist, "C:\program - app Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe"
If !ErrorLevel ; is not running
{
 Run, "C:\program - app Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe"
  return
}
 pid := ErrorLevel
IfWinNotActive, % "ahk_pid " pid
 WinActivate, % "ahk_pid " pid
else
 WinMinimize, % "ahk_pid " pid
  return

; 14.	Volume Mixer [program - app]
^#v::
Process, Exist, SndVol.exe
If !ErrorLevel ; is not running
{
 Run, C:\Windows\System32\SndVol.exe
  return
}
 pid := ErrorLevel
IfWinNotActive, % "ahk_pid " pid
 WinActivate, % "ahk_pid " pid
else
 WinMinimize, % "ahk_pid " pid
  return

