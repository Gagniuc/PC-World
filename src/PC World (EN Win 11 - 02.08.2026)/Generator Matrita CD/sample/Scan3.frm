VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Scan3 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   0  'None
   Caption         =   "Inter-Server v1.0"
   ClientHeight    =   6375
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9570
   Icon            =   "Scan3.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6375
   ScaleWidth      =   9570
   StartUpPosition =   2  'CenterScreen
   Begin VB.DriveListBox Drive1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   315
      Left            =   6360
      TabIndex        =   13
      Top             =   1080
      Width           =   3015
   End
   Begin PC_World.Buton_3D_General Porneste 
      Height          =   375
      Left            =   3840
      TabIndex        =   5
      Top             =   5760
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   661
      Caption         =   "Porneste serverul"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      BackColor       =   16777215
      ForeColor       =   0
   End
   Begin VB.Timer Cum_e 
      Interval        =   100
      Left            =   360
      Top             =   6720
   End
   Begin VB.TextBox Listare_procese_server 
      BackColor       =   &H00400000&
      ForeColor       =   &H00E0E0E0&
      Height          =   4630
      Left            =   240
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Top             =   720
      Width           =   5895
   End
   Begin VB.TextBox port 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   8520
      MaxLength       =   5
      TabIndex        =   1
      Text            =   "80"
      Top             =   720
      Width           =   855
   End
   Begin VB.DirListBox Dir1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   3690
      Left            =   6360
      TabIndex        =   0
      Top             =   1680
      Width           =   3015
   End
   Begin MSWinsockLib.Winsock Conex 
      Left            =   960
      Top             =   6720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      LocalPort       =   80
   End
   Begin MSWinsockLib.Winsock Caraus 
      Index           =   0
      Left            =   1560
      Top             =   6720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin PC_World.Buton_3D_General iesire 
      Height          =   255
      Left            =   9120
      TabIndex        =   10
      Top             =   120
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      Caption         =   "X"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      BackColor       =   12632256
      ForeColor       =   0
   End
   Begin PC_World.Buton_3D_General Jos 
      Height          =   255
      Left            =   8760
      TabIndex        =   11
      Top             =   120
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      Caption         =   "_"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      BackColor       =   12632256
      ForeColor       =   0
   End
   Begin PC_World.Buton_3D_General Ajutor 
      Height          =   255
      Left            =   8400
      TabIndex        =   15
      Top             =   120
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      Caption         =   "?"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      BackColor       =   12632256
      ForeColor       =   0
   End
   Begin VB.Label v9 
      BackStyle       =   0  'Transparent
      Caption         =   "Versiunea beta"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   135
      Left            =   3360
      TabIndex        =   14
      Top             =   480
      Width           =   975
   End
   Begin VB.Label v5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Directorul radacina al serverului:"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   6360
      TabIndex        =   12
      Top             =   1440
      Width           =   2295
   End
   Begin VB.Label v6 
      BackStyle       =   0  'Transparent
      Caption         =   "HTTP server"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   135
      Left            =   4680
      TabIndex        =   9
      Top             =   240
      Width           =   855
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Inter-Server v1.0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   360
      TabIndex        =   8
      Top             =   240
      Width           =   3855
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00C0C0C0&
      X1              =   6000
      X2              =   2040
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label v1 
      BackStyle       =   0  'Transparent
      Caption         =   "Inter-Server v1.0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   495
      Left            =   480
      TabIndex        =   7
      Top             =   120
      Width           =   4095
   End
   Begin VB.Label eu_C 
      BackStyle       =   0  'Transparent
      Caption         =   "Software && Copyright by Paul Gagniuc"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   6000
      Width           =   2535
   End
   Begin VB.Image fulger 
      Height          =   480
      Left            =   8640
      Picture         =   "Scan3.frx":0ECA
      Top             =   5640
      Width           =   480
   End
   Begin VB.Label lblStatus 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2520
      TabIndex        =   4
      Top             =   5430
      Width           =   4935
   End
   Begin VB.Label lblLocalPort 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Porneste serverul pe portul:"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   6360
      TabIndex        =   3
      Top             =   720
      Width           =   2055
   End
   Begin VB.Image fundal 
      Height          =   6375
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9615
   End
End
Attribute VB_Name = "Scan3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Private Sub Ajutor_Click()
Listare_procese_server.Text = "Inter-server este un server web care face parte din interfata PC World." & vbCrLf & _
"Serverul porneste direct de pe CD iar pagina principala este Index.htm(tot pe CD)" & vbCrLf & _
"Daca serverul porneste, un utilizator de la distanta poate descarca pagina web cu Internet Explorer sau Netscape. " & vbCrLf & _
"Link-ul folosit este: http://IP_server/." & vbCrLf & _
"IP_server este IP-ul calculatorului dumneavoastra, adica  " & Conex.LocalIP & vbCrLf & vbCrLf & _
"Ex:" & vbCrLf & _
"Un client apeleaza serverul prin Internet Explorer cu link-ul: http:\\" & Conex.LocalIP & "\" & vbCrLf & _
"In cazul in care porniti serverul pe un alt port, sa spunem 99, apelarea se face: http:\\" & Conex.LocalIP & ":99\" & vbCrLf

End Sub

Private Sub v6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub fundal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub iesire_Click()
Unload Scan3
End Sub

Private Sub Jos_Click()
On Error Resume Next
Me.WindowState = 1
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Porneste_Click()
On Error Resume Next
Dir_Radacina = Dir1.Path
Continut_Director = 0
LocalPort = Val(port.Text)

Conex.Close
'Scan3.Conex.LocalPort = LocalPort
'Scan3.Conex.Listen

On Error GoTo 3
Conex.LocalPort = LocalPort
Conex.Listen
GoTo 4
3:
Listare_procese_server.Text = Listare_procese_server.Text & vbCrLf & "Pe portul " & port.Text & " mai exista un server." & vbCrLf & "Serverul nu a pornit."
Exit Sub
4:

On Error Resume Next

Listare_procese_server.Text = "Inter-Server v1.0 a pronit la " & Time & " pe portul " & port.Text & vbCrLf & "Directorul radacina este: " & Dir1.Path & vbCrLf & "Sunt in asteptare de conexiuni ..." & vbCrLf

End Sub

Private Sub Drive1_Change()
On Error Resume Next
Dir1.Path = Drive1.Drive
End Sub

Private Sub port_LostFocus()

If Val(port.Text) > 65000 Then
    port.Text = "65000"
ElseIf Val(port.Text) < 1 Then
    port.Text = "1"
End If

End Sub

Private Sub Form_Load()
On Error Resume Next

Me.Icon = Instalare.Icon
fundal.Picture = Captura.Incarcare.Picture
Dir1.Path = App.Path & "\aferent\"
port.Text = "80"

'***************************************

If LocalPort = 0 Then LocalPort = 80

If Right(Dir_Radacina, 1) <> "\" Then
    Dir_Radacina = Dir_Radacina & "\"
End If

On Error GoTo 3
Conex.LocalPort = LocalPort
Conex.Listen
GoTo 4
3:
Listare_procese_server.Text = Listare_procese_server.Text & "Pe portul " & port.Text & " mai exista un server." & vbCrLf & "Serverul nu a pornit."
Exit Sub
4:

On Error Resume Next

For i = 1 To 5
Load Caraus(i)
Next i

Exit Sub

End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next

'Dim LineData As String
'Dim OldData As String, NewData As String

'Reset
'Reset

'If Dir("C:\PC_World\Inter-server.txt") <> "" Then
'    Open "C:\PC_World\Inter-server.txt" For Input As #1
'        Do Until EOF(1)
'            Line Input #1, LineData
'            OldData = OldData & LineData & vbCrLf
'        Loop
'    Close #1
'End If

'NewData = Activity

'Open "C:\PC_World\Inter-server.txt" For Output As #1
'Print #1, NewData, OldData
'Close #1

End Sub

Private Sub Cum_e_Timer()
Dim SentString  As String, RecievedString As String

If TotalBytesSent > 1024 ^ 2 Then
    SentString = Round(TotalBytesSent / 1024 ^ 2, 2) & "Mb"
ElseIf TotalBytesSent > 1024 Then
    SentString = Round(TotalBytesSent / 1024, 2) & "Kb"
Else
    SentString = TotalBytesSent & "b"
End If

If TotalBytesReceived > 1024 Then
    RecievedString = Round(TotalBytesReceived / 1024, 2) & "Kb"
Else
    RecievedString = TotalBytesReceived & "b"
End If

lblStatus.Caption = "Am trimis " & SentString & ", am primit " & RecievedString & " - [Nr. conexiuni " & TotalConnections & "]"

End Sub

Private Sub Conex_ConnectionRequest(ByVal requestID As Long)
'On Error Resume Next

        For a = 1 To Caraus.Count
'If Caraus(a).State = 0 Or Caraus(a).State = 8 Then
If Caraus(a).State = sckClosed Then
Caraus(a).Accept requestID

TotalConnections = TotalConnections + 1
            
    If bulica <> Conex.RemoteHostIP Then
    bulica = Conex.RemoteHostIP
    Listare_procese_server.Text = Listare_procese_server.Text & "Am aprobat conexiunea cu  [" & Conex.RemoteHostIP & "] la " & Time & vbCrLf
    End If
            
            Exit Sub
            
Else
            
    If bulica <> Conex.RemoteHostIP Then
    bulica = Conex.RemoteHostIP
    Listare_procese_server.Text = Listare_procese_server.Text & "Am REFUZAT conexiunea cu  [" & Conex.RemoteHostIP & "] " & Time & vbCrLf
    End If
            
End If
DoEvents
        Next a
    
   ' connections = connections + 1
   ' Num = Caraus.UBound + 1
   ' Load Caraus(Num)
   ' Caraus(Num).Accept requestID

End Sub

Private Sub Caraus_DataArrival(Index As Integer, ByVal bytesTotal As Long)
Dim Data As String, Temp() As String, Method  As String, File As String

Caraus(Index).GetData Data
TotalBytesReceived = TotalBytesReceived + bytesTotal

Temp() = Split(Data, " ")
Method = Temp(0)
File = Temp(1)

Select Case LCase(Method)
Case "get"
    Verifica File, Index
    'MsgBox "REQUEST FOR " & UCase(File)
Case "post"
    Dim PostBegin As Single
    PostBegin = InStr(1, Data, Chr(13) & Chr(10) & Chr(13) & Chr(10))
    
'    Debug.Print ""
'    Debug.Print "File: " & Temp(1)
'    Debug.Print "Data:" & Mid(data, PostBegin + 4)
    
    Verifica File, Index
    
    'MsgBox "POSTING " & UCase(File)
End Select
End Sub

Public Sub SendFile(FileName As String, HTTPHeader As String, wskIndex As Integer)
On Error GoTo ErrorHandler

Dim FileNumber As String
Dim Datablock As String
Dim Buffer As String


FileNumber = FreeFile

Open FileName For Binary Access Read As FileNumber

Select Case LOF(FileNumber)
Case Is > 65536 ' The file is more than 65536 bytes (64 kilobytes) so we will send it in small pieces
    
    Buffer = 2048 'Setting BUFFER as 1024 will send the file in small 1024 byte (1 kilobyte) partitions
    
    Caraus(wskIndex).SendData (HTTPHeader & vbCrLf & vbCrLf)
    
    Do Until Loc(FileNumber) >= LOF(FileNumber)
        If LOF(FileNumber) - Loc(1) < Buffer Then 'There is not enough data left in the file to fill BUFFER
            Datablock = Space(LOF(FileNumber) - Loc(FileNumber))
        Else                             'There is enough data left in the file to fill BUFFER
            Datablock = Space(Buffer)
        End If
    
        Get FileNumber, , Datablock
        
        
        Caraus(wskIndex).Tag = "unsent"
            If Caraus(wskIndex).State <> 7 Then
                Caraus(wskIndex).Close
                Exit Sub
            End If
        
        Caraus(wskIndex).SendData Datablock
    
        Do Until Caraus(wskIndex).Tag = "sent"
            If Caraus(wskIndex).State <> 7 Then
                Caraus(wskIndex).Close
                Exit Sub
            End If
            
            DoEvents
        Loop
        
        TotalBytesSent = TotalBytesSent + Buffer
        
NextBlock:
    Loop

Case Is < 65537 ' The file is less than 65536 bytes (64 kilobytes)
    Caraus(wskIndex).SendData (HTTPHeader & vbCrLf & vbCrLf)
    
    
    Buffer = LOF(FileNumber)
    
    Datablock = Space(Buffer)
    Get FileNumber, , Datablock
    
    Caraus(wskIndex).Tag = "unsent"
    Caraus(wskIndex).SendData Datablock
   
    Do Until Caraus(wskIndex).Tag = "sent"
        If Caraus(wskIndex).State <> 7 Then
            Caraus(wskIndex).Close
            Exit Sub
        End If
        
        DoEvents
    Loop
        
    TotalBytesSent = TotalBytesSent + Buffer

End Select

Close FileNumber

Caraus(wskIndex).Close

Exit Sub

ErrorHandler:
Select Case Err.Number

End Select
End Sub

Private Sub Caraus_SendComplete(Index As Integer)
Caraus(Index).Tag = "sent"
'Caraus(Index).Close
End Sub

Private Sub v9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub
