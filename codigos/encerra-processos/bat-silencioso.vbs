Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c encerra-processo.bat"
oShell.Run strArgs, 0, false