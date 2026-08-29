VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Scan1 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   0  'None
   Caption         =   "Scaner de porturi  V1.0"
   ClientHeight    =   5520
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7560
   Icon            =   "Sc1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5520
   ScaleWidth      =   7560
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Rezultat 
      BackColor       =   &H00000040&
      ForeColor       =   &H00FFFFFF&
      Height          =   3255
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   4
      Top             =   1320
      Width           =   7215
   End
   Begin VB.TextBox la 
      Appearance      =   0  'Flat
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
      ForeColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   5520
      TabIndex        =   3
      Text            =   "65536"
      Top             =   840
      Width           =   735
   End
   Begin VB.TextBox De_la 
      Appearance      =   0  'Flat
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
      ForeColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   4080
      TabIndex        =   2
      Text            =   "1"
      Top             =   840
      Width           =   735
   End
   Begin VB.TextBox IP_ul 
      Appearance      =   0  'Flat
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
      ForeColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   1320
      TabIndex        =   1
      Text            =   "127.0.0.1"
      Top             =   840
      Width           =   1695
   End
   Begin MSWinsockLib.Winsock LocalIP_eu 
      Left            =   5640
      Top             =   5040
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin PC_World.Buton_3D_General ScanareNet 
      Height          =   375
      Left            =   6360
      TabIndex        =   0
      Top             =   780
      Width           =   975
      _ExtentX        =   1720
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
   Begin MSWinsockLib.Winsock Sock 
      Index           =   0
      Left            =   6120
      Top             =   5040
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin PC_World.Buton_3D_General iesire 
      Height          =   255
      Left            =   7080
      TabIndex        =   5
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
      Left            =   6720
      TabIndex        =   6
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
   Begin VB.Label arata 
      Appearance      =   0  'Flat
      BackColor       =   &H00000040&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Astept directive ..."
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   4680
      Width           =   7215
   End
   Begin VB.Label v3 
      BackStyle       =   0  'Transparent
      Caption         =   "TCP/IP Scaner"
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
      Left            =   480
      TabIndex        =   14
      Top             =   240
      Width           =   3255
   End
   Begin VB.Label v1 
      BackStyle       =   0  'Transparent
      Caption         =   "TCP/IP Scaner"
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
      Left            =   240
      TabIndex        =   13
      Top             =   120
      Width           =   3255
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
      TabIndex        =   12
      Top             =   5160
      Width           =   2415
   End
   Begin VB.Label v4 
      BackStyle       =   0  'Transparent
      Caption         =   "de viteza"
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
      Left            =   3240
      TabIndex        =   11
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label v2 
      BackStyle       =   0  'Transparent
      Caption         =   "de viteza"
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
      Left            =   3000
      TabIndex        =   10
      Top             =   120
      Width           =   1695
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00C0C0C0&
      X1              =   1560
      X2              =   5040
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label s2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "de la portul :"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   3000
      TabIndex        =   9
      Top             =   840
      Width           =   1095
   End
   Begin VB.Label s3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "pana la :"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   4800
      TabIndex        =   8
      Top             =   840
      Width           =   735
   End
   Begin VB.Label s1 
      BackStyle       =   0  'Transparent
      Caption         =   "Scaneaza IP-ul :"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   840
      Width           =   1215
   End
   Begin VB.Image fulger 
      Height          =   480
      Left            =   6720
      Picture         =   "Sc1.frx":0ECA
      Top             =   4995
      Width           =   480
   End
   Begin VB.Image fundal 
      Height          =   5535
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7575
   End
End
Attribute VB_Name = "Scan1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2


Private Socket As Variant
Private CurrentPort As Variant
Private Const MaxSockets = 200

Private Sub Form_Load()
On Error Resume Next

Me.Icon = Instalare.Icon
fundal.Picture = Captura.Incarcare.Picture
IP_ul.Text = LocalIP_eu.LocalIP
End Sub

Private Sub iesire_Click()
If ScanareNet.Caption = "Stop" Then ScanareNet_Click
Unload Me
End Sub

Private Sub Jos_Click()
On Error Resume Next
Me.WindowState = 1
End Sub

Private Sub ScanareNet_Click()

On Error Resume Next



If ScanareNet.Caption = "Scaneaza" Then
Rezultat.Text = Rezultat.Text & "#######  Scanez: " & IP_ul.Text & " de la portul " & De_la.Text & " pina la " & la.Text & " - [" & Time & "]" & vbCrLf
Rezultat.Text = Rezultat.Text & "##  " & vbCrLf

IP_ul.Enabled = False
De_la.Enabled = False
la.Enabled = False


ScanareNet.Caption = "Stop"
For i = 1 To MaxSockets
Load Sock(i)
Next i
CurrentPort = De_la.Text
While ScanareNet.Caption = "Stop"
For Each Socket In Sock
DoEvents
If Socket.State <> sckClosed Then
GoTo continue
End If
Socket.Close
If CurrentPort = Val(la.Text) + 1 Then
Rezultat.Text = Rezultat.Text & "##  " & vbCrLf
Rezultat.Text = Rezultat.Text & "#######  Scanare completa a IP-ului " & IP_ul.Text & " la " & Time & vbCrLf & vbCrLf
ScanareNet.Caption = "Scaneaza"
Exit For
End If

Socket.RemoteHost = IP_ul.Text
Socket.RemotePort = CurrentPort
arata.Caption = Time & " - Scanez portul -  " & CurrentPort & " (versiunea de viteza)"
Socket.Connect
CurrentPort = CurrentPort + 1
continue:
'If zulu_net = False Then Exit Sub
Next Socket
Wend
ScanareNet.Caption = "Scaneaza"

IP_ul.Enabled = True
De_la.Enabled = True
la.Enabled = True


Else
ScanareNet.Caption = "Scaneaza"
Rezultat.Text = Rezultat.Text & "##  " & vbCrLf
Rezultat.Text = Rezultat.Text & "#######  Scanarea IP-ului " & IP_ul.Text & " a fost intrerupta la portul " & CurrentPort & ", ora " & Time & vbCrLf & vbCrLf
End If

For i = 1 To MaxSockets
Unload Sock(i)
Next i

End Sub

Private Sub Rezultat_Change()
Rezultat.SelStart = Len(Rezultat.Text)
End Sub


Private Function AddPort(port As Integer)
On Error Resume Next
Dim ser As String
ser = Nume_serviciu(port)
If ser = "" Then ser = "necunoscut"
Rezultat.Text = Rezultat.Text & "##  " & Time & " - [Portul " & port & " - deschis, serviciul este " & ser & " ]" & vbCrLf
End Function


Private Sub fundal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Sock_Connect(Index As Integer)
On Error Resume Next
AddPort (Sock(Index).RemotePort)
Sock(Index).Close
End Sub

Private Sub Sock_Error(Index As Integer, ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
Sock(Index).Close
End Sub

Private Sub v1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub


Private Sub v2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
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

Private Sub v4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub
