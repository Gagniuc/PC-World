VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Scan2 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   0  'None
   Caption         =   "Scaner IP de precizie -  v1.0"
   ClientHeight    =   5295
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7905
   Icon            =   "Sc2.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5295
   ScaleWidth      =   7905
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox StartIP1 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   1680
      MaxLength       =   3
      TabIndex        =   9
      Text            =   "127"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox StartIP4 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   3120
      MaxLength       =   3
      TabIndex        =   8
      Text            =   "1"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox StartIP3 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   2640
      MaxLength       =   3
      TabIndex        =   7
      Text            =   "0"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox StartIP2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   2160
      MaxLength       =   3
      TabIndex        =   6
      Text            =   " 0"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox StopIP3 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   5280
      MaxLength       =   3
      TabIndex        =   5
      Text            =   "255"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox StopIP2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   4800
      MaxLength       =   3
      TabIndex        =   4
      Text            =   "255"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox StopIP1 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   4320
      MaxLength       =   3
      TabIndex        =   3
      Text            =   "255"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox txtPort 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   7080
      MaxLength       =   5
      TabIndex        =   2
      Text            =   "139"
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox StopIP4 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   5760
      MaxLength       =   3
      TabIndex        =   1
      Text            =   "255"
      Top             =   840
      Width           =   495
   End
   Begin VB.TextBox Masina 
      BackColor       =   &H00000040&
      ForeColor       =   &H00FFFFFF&
      Height          =   3255
      Left            =   240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   1320
      Width           =   7455
   End
   Begin VB.Timer Timer 
      Interval        =   2000
      Left            =   720
      Top             =   5400
   End
   Begin MSWinsockLib.Winsock wnsConnection 
      Left            =   120
      Top             =   5400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin PC_World.Buton_3D_General CmdAction 
      Height          =   375
      Left            =   4080
      TabIndex        =   10
      Top             =   4680
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      Caption         =   "Scaneaza"
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
   Begin PC_World.Buton_3D_General iesire 
      Height          =   255
      Left            =   7440
      TabIndex        =   11
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
      Left            =   7080
      TabIndex        =   12
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
      TabIndex        =   18
      Top             =   4920
      Width           =   2535
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FF8080&
      BackStyle       =   0  'Transparent
      Caption         =   "pana la:"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   3720
      TabIndex        =   17
      Top             =   840
      Width           =   615
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FF8080&
      BackStyle       =   0  'Transparent
      Caption         =   "Scaneaza de la IP-ul:"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FF8080&
      BackStyle       =   0  'Transparent
      Caption         =   "pe portul:"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   6360
      TabIndex        =   15
      Top             =   840
      Width           =   735
   End
   Begin VB.Image fulger 
      Height          =   480
      Left            =   7080
      Picture         =   "Sc2.frx":0ECA
      Top             =   4680
      Width           =   480
   End
   Begin VB.Label v3 
      BackStyle       =   0  'Transparent
      Caption         =   "Scaner IP de precizie"
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
      Left            =   600
      TabIndex        =   14
      Top             =   240
      Width           =   3855
   End
   Begin VB.Label v1 
      BackStyle       =   0  'Transparent
      Caption         =   "Scaner IP de precizie"
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
      TabIndex        =   13
      Top             =   120
      Width           =   4095
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00C0C0C0&
      X1              =   2280
      X2              =   4800
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Image fundal 
      Height          =   5295
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7935
   End
End
Attribute VB_Name = "Scan2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Dim Action As Integer
Dim StartIP As String, EndIP As String
Dim Seconds

Private Sub CmdAction_Click()
'if command button already clicked then action would
'equal 1
If Action = 1 Then
Masina.Text = Masina.Text & "###" & vbNewLine & "######### Scanare terminata " & vbNewLine & vbNewLine
    
    'change the command button to say start
    CmdAction.Caption = "Start"
    'close the winsock connection
    wnsConnection.Close
    'and reset the action variable to 0
    Action = 0
    Exit Sub
'else you are starting the scan and action equals 0
Else
    'set the action variable to 1
    Action = 1
    'set the command button to say stop
    CmdAction.Caption = "Stop"
    'call the routine to scan the ports
    
StartIPeu = Trim(StartIP1.Text) & "." & Trim(StartIP2.Text) & "." & Trim(StartIP3.Text) & "." & Trim(StartIP4.Text)
EndIPeu = StopIP1 & "." & StopIP2 & "." & StopIP3 & "." & StopIP4


Masina.Text = Masina.Text & "######### Scanez de la IP-ul " & StartIPeu & " pana la " & EndIPeu & " pe portul " & txtPort.Text & vbNewLine & "###" & vbNewLine

    
    Call ScanPorts
End If
End Sub

Private Sub Form_Load()
On Error Resume Next

Me.Icon = Instalare.Icon
fundal.Picture = Captura.Incarcare.Picture
'initialize the action variable to 0
Action = 0
'set the command button to say start
CmdAction.Caption = "Start"
'we will lock the message box so that we dont write
'over the ip addresses accidently
Masina.Locked = True
End Sub

Private Sub ScanPorts()
'variables we'll use in this routine
Dim Start As Integer
'if we get an error that we dont like we'll just
'continue since we dont have any error handling
On Error Resume Next

'initialize the variables to 0
Start = 0
'concatenate the ip string to stop the scanner
EndIP = StopIP1 & "." & StopIP2 & "." & StopIP3 & "." & StopIP4
Do While Not StartIP = EndIP
    If Action = 0 Then
        Exit Do
    End If
    'concatenate the ip starting string
    StartIP = Trim(StartIP1.Text) & "." & Trim(StartIP2.Text) & "." & Trim(StartIP3.Text) & "." & Trim(StartIP4.Text)

    'close the winsock control
    wnsConnection.Close
    'connect to the ip and port
    wnsConnection.Connect StartIP, txtPort
    'a little loop to wait to see if the connection
    'can be made
    Seconds = 0
    Do While Seconds = 0
        DoEvents
    Loop
    'if the computers are connected...
    If wnsConnection.State = 7 Then
        Masina.Text = Masina.Text & "### IP-ul " & StartIP & " are portul " & txtPort.Text & " deschis." & vbNewLine

    End If
    'step the ip address 1
    StartIP4.Text = StartIP4.Text + 1
        'if the ip address has reached the 255 limit then
        'count the next range 1 and reset to 1
        If StartIP4.Text = "256" Then
            StartIP4.Text = "1"
            StartIP3.Text = StartIP3.Text + 1
            If StartIP3.Text = "256" Then
                StartIP3.Text = "1"
                StartIP2.Text = StartIP2.Text + 1
                If StartIP2.Text = "256" Then
                    StartIP2.Text = "1"
                    StartIP1.Text = StartIP1.Text + 1
                    If StartIP1.Text = "256" Then
                        Exit Sub
                    End If
                End If
            End If
        End If
    'set the start variable to 1 so that when we loop
    'we dont write the starting ip again
    Start = 1
Loop
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload Me
End Sub

Private Sub fundal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub iesire_Click()
Unload Me
End Sub

Private Sub Jos_Click()
On Error Resume Next
Me.WindowState = 1
End Sub

'///////////////////////////////////////////////////
'ok so these next subroutines are for when a text
'box has the focus to select everything in the box
Private Sub StartIP1_GotFocus()
StartIP1.SelStart = 0
StartIP1.SelLength = Len(StartIP1.Text)
End Sub

Private Sub StartIP2_GotFocus()
StartIP2.SelStart = 0
StartIP2.SelLength = Len(StartIP1.Text)
End Sub

Private Sub StartIP3_GotFocus()
StartIP3.SelStart = 0
StartIP3.SelLength = Len(StartIP1.Text)
End Sub

Private Sub StartIP4_GotFocus()
StartIP4.SelStart = 0
StartIP4.SelLength = Len(StartIP1.Text)
End Sub

Private Sub StopIP1_gotfocus()
StopIP1.SelStart = 0
StopIP1.SelLength = Len(StopIP1.Text)
End Sub

Private Sub StopIP2_gotfocus()
StopIP2.SelStart = 0
StopIP2.SelLength = Len(StopIP1.Text)
End Sub

Private Sub StopIP3_gotfocus()
StopIP3.SelStart = 0
StopIP3.SelLength = Len(StopIP1.Text)
End Sub

Private Sub StopIP4_gotfocus()
StopIP4.SelStart = 0
StopIP4.SelLength = Len(StopIP1.Text)
End Sub

Private Sub txtPort_gotfocus()
txtPort.SelStart = 0
txtPort.SelLength = Len(txtPort.Text)
End Sub

Private Sub Timer_Timer()
Seconds = 1
End Sub

Private Sub v1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub v3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub
