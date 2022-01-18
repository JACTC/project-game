do
returnvalue=msgbox ("ARE YOU STUPID?",4+32,"ARE YOU STUPID?")
set WshShell = Wscript.createObject("WScript.Shell")
WshShell.Run "areyoustupid.vbs"
Wsh.sleep 100
Set sapi=CreateObject("sapi.spvoice")
sapi.Speak "are you stupid?"
loop