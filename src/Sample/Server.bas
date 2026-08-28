Attribute VB_Name = "Server"
Public Dir_Radacina As String
Public Continut_Director As Boolean
Public LocalPort As Single

Public bulica As String

Public TotalConnections As Single, TotalBytesSent As Long, TotalBytesReceived As Long


Public Sub Status(StatusText As String)
'Activity = Activity & StatusText & vbCrLf
End Sub


Sub Verifica(FilePath As String, Winsock As Integer)
On Error Resume Next

Dim DirectorX As String, FileName As String, HTTPHeader As String
Dim Protocol As String

Protocol = "HTTP/1.1 200 OK"

'Status ("Cerere de la : [ " & Scan3.Caraus(Winsock).RemoteHostIP & " ]- [ " & FilePath & " ]")

FilePath = OriginalName(FilePath)

DirectorX = GetDirectory(FilePath)
FileName = GetFileName(FilePath)

If Right(DirectorX, 1) <> "\" Then DirectorX = DirectorX & "\"
If Left(DirectorX, 1) = "\" Then DirectorX = Mid(DirectorX, 2)

If Right(Dir_Radacina, 1) <> "\" Then Dir_Radacina = Dir_Radacina & "\"

If FileName = "\" Then FileName = ""

If FileName = "" Then
    Select Case Dir(Dir_Radacina & DirectorX & "index.html")
    Case ""
        Select Case Dir(Dir_Radacina & DirectorX & "index.htm")
        Case ""
            If MakeFileList(Dir_Radacina & DirectorX, DirectorX) = True Then
                FileName = "**INDEX**"
            Else
                GoTo Error404
            End If
        Case Else
            FileName = "index.htm"
        End Select
    Case Else
        FileName = "index.html"
    End Select
End If

If FileName = "**INDEX**" Then
    If Dir("C:\PC_World\tmp.html") = "" Then
        GoTo Error404
    End If
   ' Status "Am incarcat pe : [ " & Scan3.Caraus(Winsock).RemoteHostIP & " ] - [ " & Dir_Radacina & DirectorX & FileName & " ]"

If FileName = "**INDEX**" Then
    HTTPHeader = MakeHeader(Protocol, "", GetContentType(FileName), "", FileLen("C:\PC_World\tmp.html"))
Else
    HTTPHeader = MakeHeader(Protocol, "", GetContentType(FileName), "", FileLen(Dir_Radacina & DirectorX & FileName))
End If

    Scan3.SendFile "C:\PC_World\tmp.html", HTTPHeader, Winsock
    Exit Sub
End If

If Right(DirectorX, 1) <> "\" Then DirectorX = DirectorX & "\"
If Dir(Dir_Radacina & DirectorX & FileName) = "" Then
Error404:
    
    Select Case Dir(Dir_Radacina & "Index.htm")
    Dim Erro404FileNumber
    Case ""
        
'        Erro404FileNumber = FreeFile
        
'        Open Dir_Radacina & "404.html" For Output As Err404FileNumber
'            Print #Err404FileNumber, Make404
'        Close Err404FileNumber
        
        DirectorX = ""
        FileName = "Index.htm"
    
    Case Else
        
        DirectorX = ""
        FileName = "Index.htm"
    
    End Select
    
    Protocol = "HTTP/1.1 404 Obiectul nu poate fi gasit"
    
End If


'Status "Am trimis catre : [ " & Scan3.Caraus(Winsock).RemoteHostIP & " ] - [ " & Dir_Radacina & DirectorX & FileName

HTTPHeader = MakeHeader(Protocol, Replace(DirectorX, "\", "/") & FileName, GetContentType(FileName), FileDateTime(Dir_Radacina & DirectorX & FileName), FileLen(Dir_Radacina & DirectorX & FileName))
Scan3.SendFile Dir_Radacina & DirectorX & FileName, HTTPHeader, Winsock

Exit Sub
ErrorHandler:
Select Case Err.Number
Case 53 'File Not Found
    GoTo Error404
Case Else
    Status "Eroare: " & Err.Description
End Select

End Sub



Function GetContentType(FileName As String) As String
Dim Extention As String

Extention = GetFileExtention(FileName)

'This information tells the server how to use the data.

Select Case LCase(Extention)
Case "jpg"
    GetContentType = "image/jpeg"
Case "jpeg"
    GetContentType = "image/jpeg"
Case "gif"
    GetContentType = "image/gif"
Case "bmp"
    GetContentType = "image/bmp"
Case "png"
    GetContentType = "image/png"
Case "html"
    GetContentType = "text/html"
Case "htm"
    GetContentType = "text/html"
Case "exe"
    GetContentType = "application/octet-stream"
Case "bin"
    GetContentType = "application/octet-stream"
Case "scr"
    GetContentType = "application/octet-stream"
Case "zip"
    GetContentType = "application/x-zip"
Case "swf"
    GetContentType = "application/octet-stream"
Case "mp3"
    GetContentType = "audio/mpeg"
Case "wav"
    GetContentType = "application/octet-stream"
Case "avi"
    GetContentType = "video/octet-stream"
Case "mpg"
    GetContentType = "application/octet-stream"
Case "mpeg"
    GetContentType = "application/octet-stream"
End Select

End Function

Function GetDirectory(Path As String) As String
On Error Resume Next

Dim Temp() As String

Temp() = Split(Path, "\")

For i = 0 To UBound(Temp) - 1
    GetDirectory = GetDirectory & Temp(i) & "\"
Next i

End Function

Function GetParentDirectory(Path As String) As String
On Error Resume Next

Dim Temp() As String

Temp() = Split(Path, "\")

For i = 0 To UBound(Temp) - 2
    GetParentDirectory = GetDirectory(Path) & Temp(i) & "\"
Next i

End Function

Function GetFileName(Path As String) As String
On Error Resume Next

Dim Temp() As String

Temp() = Split(Path, "\")

    GetFileName = Temp(UBound(Temp))

End Function

Function GetFileExtention(FileName As String) As String
On Error Resume Next

Dim Temp() As String
Temp() = Split(FileName, ".")
If UBound(Temp) < 0 Then Exit Function
GetFileExtention = Temp(UBound(Temp))
End Function

Function MakeHeader(Protocol As String, ContentLocation As String, ContentType As String, LastModified As String, ContentLength As String)

Dim CurrentDate As String, DayStr As String, MonthStr As String

Select Case Weekday(Date)
Case 1
    DayStr = "Luni"
Case 2
    DayStr = "Marti"
Case 3
    DayStr = "Miercuri"
Case 4
    DayStr = "Joi"
Case 5
    DayStr = "Vineri"
Case 6
    DayStr = "Sambata"
Case 0
    DayStr = "Duminica"
End Select

Select Case Month(Date)
Case 0
    MonthStr = "Ianuarie"
Case 1
    MonthStr = "Februarie"
Case 2
    MonthStr = "Martie"
Case 3
    MonthStr = "Aprilie"
Case 4
    MonthStr = "Mai"
Case 5
    MonthStr = "Iunie"
Case 6
    MonthStr = "Iulie"
Case 7
    MonthStr = "August"
Case 8
    MonthStr = "Septembrie"
Case 9
    MonthStr = "Octombrie"
Case 10
    MonthStr = "Noiembrie"
Case 11
    MonthStr = "Decembrie"
End Select

MakeHeader = Protocol & vbCrLf & _
"Server: Inter-Server v1.0" & vbCrLf & _
"Content-Location: " & ContentLocation & vbCrLf & _
"Date: " & DayStr & ", " & DateValue(Date) & " " & MonthStr & " " & Year(Date) & " " & Time & " GMT" & vbCrLf & _
"Connection: Keep-Alive" & vbCrLf

If ContentType <> "" Then
    MakeHeader = MakeHeader & "Content-Type: " & ContentType & vbCrLf
End If

MakeHeader = MakeHeader & _
"Content-Length: " & ContentLength '"Last-Modified: " & LastModified & vbCrLf

End Function

Function Make404() As String
'Make a Error 404 File Not Found Error Page
Make404 = _
"<html>" & vbCrLf & _
"<head>" & vbCrLf & _
"<title>Eroare 404 - Fisierul nu a fost gasit</title>" & vbCrLf & _
"</head>" & vbCrLf & _
vbCrLf & _
"<body bgcolor=" & Chr(34) & "#FFFFFF" & Chr(34) & " text=" & Chr(34) & "#000000" & Chr(34) & ">" & vbCrLf & _
"<div align=" & Chr(34) & "center" & Chr(34) & ">" & vbCrLf & _
"  <p align=" & Chr(34) & "left" & Chr(34) & "><b><font size=" & Chr(34) & "+7" & Chr(34) & " face=" & Chr(34) & "Arial, Helvetica, sans-serif" & Chr(34) & ">Eroare" & vbCrLf & _
"    404 </font></b></p>" & vbCrLf & _
"  <p align=" & Chr(34) & "left" & Chr(34) & "><b><font face=" & Chr(34) & "Arial, Helvetica, sans-serif" & Chr(34) & " size=" & Chr(34) & "5" & Chr(34) & "> Fisierul nu a fost gasit." & vbCrLf & _
"    </font></b></p>" & vbCrLf & _
"  <p align=" & Chr(34) & "left" & Chr(34) & ">&nbsp;</p>" & vbCrLf & _
"  <p align=" & Chr(34) & "left" & Chr(34) & "><font size=" & Chr(34) & "4" & Chr(34) & ">Fisierul cerut nu exista in acest director." & vbCrLf & _
"    </font></p>" & vbCrLf & _
"  <p align=" & Chr(34) & "left" & Chr(34) & "><i>Inter-Server v1.0 </i></p>" & vbCrLf & _
"  </div>" & vbCrLf & _
"</body>" & vbCrLf & _
"</html>"
End Function


Function MakeFileList(Path As String, DirName As String) As Boolean
On Error Resume Next

Dim FileData As String
'On Error GoTo ErrorHandler

' I have directories with 100s of files in them, it can waste time if u generate identical index's.
'If dir(Path & "contents.html") <> "" Then MakeFileList = True: Exit Function

Dim FileListFileNumber As Single

If DirName = "" Then DirName = "radacina"
'If a path is typed in without a filename, and index.html/.htm does not exist
'and user has elabled content viewing then we send files and sub-directories
'found in the specified path
'"A.ssmItems:link     {color:#ffffff;text-decoration:none;}" & vbCrLf & _
'"A.ssmItems:hover    {color:#ffffff;text-decoration:none;}" & vbCrLf & _
'"A.ssmItems:active   {color:#ffffff;text-decoration:none;}" & vbCrLf & _
'"A.ssmItems:visited  {color:#ffffff;text-decoration:none;}" & vbCrLf & _
'Just HTML
FileData = _
"<HTML>" & vbCrLf & _
 "<HEAD>" & vbCrLf & _
 "<STYLE>" & vbCrLf & _
 "a{color:#ffffff;text-decoration:none;}" & _
 "a:hover{color:#ffff00;text-decoration:none;}" & _
 "</STYLE>" & vbCrLf & _
  "<TITLE>Continutul directorului " & DirName & "</TITLE>" & vbCrLf & _
 "</HEAD>" & vbCrLf & _
 "<BODY bgcolor='#000000'>" & vbCrLf & _
"<H1><font color='#ffffff'>Continutul directorului " & DirName & "</font></H1>" & vbCrLf & _
"<PRE>" & vbCrLf & _
"<font color='#ffffff'>Nume                       Modificat la ...              Dimensiune fisier</font>" & vbCrLf & _
"<HR>"

FileData = FileData & _
ReturnDirectories(Path)

FileData = FileData & _
ReturnFiles(Path)

FileData = FileData & _
"</PRE>" & vbCrLf & _
"<HR>" & vbCrLf & _
"</BODY></HTML>"

'Get open a free filenumber
FileListFileNumber = FreeFile

Open "C:\PC_World\tmp.html" For Output As FileListFileNumber
    'save the file
    Print #FileListFileNumber, FileData
    MakeFileList = True
Close FileListFileNumber

Exit Function
ErrorHandler:
'MakeFileList = False
Status "Eroare : " & Err.Description
End Function

Function ReturnDirectories(Path As String) As String
On Error Resume Next

Dim CurrentDir As String, CurrentModified As String


If Right(Path, 1) <> "\" Then Path = Path & "\"
        
If LCase(Path) <> LCase(Dir_Radacina) Then
    ReturnDirectories = ReturnDirectories & _
"<A HREF=" & Chr(34) & "..\" & Chr(34) & ">" & TruncateString("<-[Iesire director]", 25) & "</A>" & TruncateString("", 27) & TruncateString("", 10) & vbCrLf
End If

CurrentDir = Dir(Path, vbDirectory)

Do Until CurrentDir = ""
    If GetAttr(Path & CurrentDir) <> vbDirectory Then GoTo NextDir
    If CurrentDir = "." Then GoTo NextDir
    If CurrentDir = ".." Then GoTo NextDir
    
    CurrentModified = FileDateTime(Path & CurrentDir)
        
    ReturnDirectories = ReturnDirectories & _
    "<A HREF=" & Chr(34) & FixName(CurrentDir) & "\" & Chr(34) & ">[" & TruncateString(CurrentDir & "]", 25) & "</A>" & "<font color='#ffffff'>" & TruncateString(CurrentModified, 27) & "</font>" & "<font color='#ffffff'>" & TruncateString("", 10) & "</font>" & vbCrLf
NextDir:
    CurrentDir = Dir(, vbDirectory)
Loop

End Function

Function ReturnFiles(Path As String) As String
On Error Resume Next

Dim CurrentFile As String, CurrentSize As String, CurrentModified As String, WebName As String

If Right(Path, 1) <> "\" Then Path = Path & "\"

CurrentFile = Dir(Path)

Do Until CurrentFile = ""
    CurrentSize = FileLen(Path & CurrentFile)
    WebName = FixName(CurrentFile)
    CurrentModified = FileDateTime(Path & CurrentFile)

    ReturnFiles = ReturnFiles & "<A HREF=" & Chr(34) & WebName & Chr(34) & ">"
    ReturnFiles = ReturnFiles & TruncateString(CurrentFile, 27) & "</A>"
    ReturnFiles = ReturnFiles & "<font color='#ffffff'>" & TruncateString(CurrentModified, 27) & "</font>"
    ReturnFiles = ReturnFiles & "<font color='#ffffff'>" & TruncateString(SimplifyFileSize(CLng(CurrentSize)), 13) & "</font>" & vbCrLf

    CurrentFile = Dir
Loop

'Debug.Print ReturnFiles

End Function

Function FixName(Name As String) As String
FixName = Name

FixName = LCase(FixName)
FixName = Replace(FixName, "\", "/")
FixName = Replace(FixName, " ", "%20")
FixName = Replace(FixName, "[", "%5B")
FixName = Replace(FixName, "]", "%5D")
FixName = Replace(FixName, "#", "%23")
FixName = Replace(FixName, "&", "%26")

End Function

Function OriginalName(Name As String) As String
OriginalName = Name

OriginalName = Replace(OriginalName, "/", "\")
OriginalName = Replace(OriginalName, "%20", " ")
OriginalName = Replace(OriginalName, "%5B", "[")
OriginalName = Replace(OriginalName, "%5D", "]")
OriginalName = Replace(OriginalName, "%23", "#")
OriginalName = Replace(OriginalName, "%26", "&")

End Function




Function SimplifyFileSize(FileSize As Long) As String

If FileSize < 1024 Then
    SimplifyFileSize = FileSize & "b"
ElseIf FileSize >= 1024 And FileSize < 1048576 Then
    SimplifyFileSize = Round(FileSize / 1024, 2) & "Kb"
Else
    SimplifyFileSize = Round(FileSize / 1048576, 2) & "Mb"
End If

End Function
Function TruncateString(FileName As String, MaxLen As String) As String

TruncateString = FileName

If Len(TruncateString) + 4 > MaxLen Then
    TruncateString = Mid(TruncateString, 1, MaxLen - 4) & "... "
Else
    TruncateString = TruncateString & Space(MaxLen - Len(TruncateString))
End If

End Function


