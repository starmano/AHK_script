Pause:: 

SoundSet, +1, MASTER, mute,2 ;2 was my mic id number use the code below the dotted line to find your mic id. you need to replace all 2's  <---------IMPORTANT
SoundGet, master_mute, , mute, 2

if(master_mute = "ON")
{
	state = OFF
}
else{
	state = ON 
}

ToolTip, Microphone is %state%
SetTimer, RemoveToolTip, 1000
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return
