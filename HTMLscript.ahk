#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.7
**********************************
;
; HTML Syntax Write
;
; For easier navigation check out file: ~~ HTMLlistAHK.txt ~~
;
;
; These should not interfere with the original .ahk script I use for opening apps, files ...
; if they do it needs fixing or just pause the basic .ahk script for the time being...
**********************************
; 00; basic html file structure template paste
^+w::
Send, {text}<!DOCTYPE html> 
Send, {enter}
Send, <html charset="UTF-8" metalang="sl">
Send, {enter}
Send, {tab}<title> {enter 2}
Send, {tab}</title>
Send, {enter}
Send, {tab}<head>{enter 2}
Send, {tab}</head>
Send, {enter}
Send, {tab}<body>{enter 2}
Send, {tab}</body>
Send, {enter}
Send, </html>
Send, {enter}
return

; 01: bold 
^+b::
Send,  <b></b>{Left 4}
return

; 02: italics
^+i::
Send,  <i></i>{Left 4}
return

; 03: paragraph
^+p::
Send <p></p>{Left 4}

;04: div
^+d::
Send <div></div>{Left 6}