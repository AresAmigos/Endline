Const ForAppending = 8
max = 40000
min = 1
count = 0
set x = CreateObject("wscript.shell")
userprofile = x.ExpandEnvironmentStrings("%UserProfile%")
Set objFSO = CreateObject("Scripting.FileSystemObject")
if objFSO.FolderExists(userprofile & "\OneDrive\Desktop") then
verify = userprofile & "\OneDrive\Desktop"
else
verify = userprofile & "\Desktop"
end if
Randomize
do while count < 256
number = Int((max-min+1)*Rnd+min)
Set objTextFile = objFSO.OpenTextFile(verify & "\Hint " & number & ".txt", ForAppending, True)
objTextFile.WriteLine("If cmd is disabled, use powershell, right?")
objTextFile.Close
count = count + 1
loop