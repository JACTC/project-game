returnvalue=msgbox ("Do you whant to see the tutorial?",4+64,"select")
If returnvalue=6 Then
set WshShell = wscript.CreateObject("wscript.Shell")
WshShell.Run "tutorial.bat"
Wscript.Quit 1
End If
returnvalue=msgbox ("Are you shure?",4+64,"Select")
If returnvalue=7 Then
set WshShell = wscript.CreateObject("wscript.Shell")
WshShell.Run "tutorial.bat"
End If