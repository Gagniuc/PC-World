Attribute VB_Name = "FUNCTII"
Public Function FileExist(aFile As String) As Boolean
On Error GoTo 23

If aFile = "" Then
FileExist = False
Exit Function
End If

If Dir$(aFile) = "" Then
If Dir$(aFile, vbHidden) = "" Then
FileExist = False
Else
FileExist = True
End If
Else
FileExist = True
End If
Exit Function
23:
FileExist = False
'KillPC
End Function
