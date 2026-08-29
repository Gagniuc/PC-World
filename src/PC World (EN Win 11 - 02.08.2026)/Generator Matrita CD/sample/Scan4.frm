VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Scan4 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   0  'None
   Caption         =   "Ping ... Pong :)"
   ClientHeight    =   5400
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7065
   Icon            =   "Scan4.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5400
   ScaleWidth      =   7065
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock soclu 
      Left            =   5760
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin PC_World.Buton_3D_General yo_ping 
      Height          =   375
      Left            =   3600
      TabIndex        =   11
      Top             =   4800
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      Caption         =   "Ping"
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
   Begin VB.TextBox Pinguin 
      BackColor       =   &H00000040&
      ForeColor       =   &H00FFFFFF&
      Height          =   3135
      Left            =   240
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   1560
      Width           =   6615
   End
   Begin VB.TextBox IP_ul 
      Alignment       =   2  'Center
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
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   4080
      TabIndex        =   2
      Text            =   "127.0.0.1"
      Top             =   1080
      Width           =   2655
   End
   Begin VB.HScrollBar ScrollTimes 
      Height          =   255
      Left            =   1320
      Max             =   300
      Min             =   1
      TabIndex        =   1
      Top             =   840
      Value           =   1
      Width           =   2535
   End
   Begin VB.HScrollBar ScrollPacket 
      Height          =   255
      Left            =   1320
      Max             =   1000
      Min             =   1
      TabIndex        =   0
      Top             =   1200
      Value           =   1
      Width           =   2535
   End
   Begin PC_World.Buton_3D_General iesire 
      Height          =   255
      Left            =   6600
      TabIndex        =   12
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
      Left            =   6240
      TabIndex        =   13
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
      TabIndex        =   14
      Top             =   5040
      Width           =   2535
   End
   Begin VB.Image fulger 
      Height          =   480
      Left            =   6240
      Picture         =   "Scan4.frx":0ECA
      Top             =   4800
      Width           =   480
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00C0C0C0&
      X1              =   720
      X2              =   1920
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Label c2 
      BackStyle       =   0  'Transparent
      Caption         =   "Ping"
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
      TabIndex        =   10
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label c1 
      BackStyle       =   0  'Transparent
      Caption         =   "Ping"
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
      Left            =   360
      TabIndex        =   9
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label v3 
      AutoSize        =   -1  'True
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "IP-ul sau adresa:"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   4080
      TabIndex        =   8
      Top             =   840
      Width           =   1185
   End
   Begin VB.Label v1 
      AutoSize        =   -1  'True
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "Ping:"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   240
      TabIndex        =   7
      Top             =   840
      Width           =   360
   End
   Begin VB.Label pinguri 
      AutoSize        =   -1  'True
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   840
      TabIndex        =   6
      Top             =   840
      Width           =   90
   End
   Begin VB.Label v2 
      AutoSize        =   -1  'True
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "Pachet:"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   240
      TabIndex        =   5
      Top             =   1200
      Width           =   555
   End
   Begin VB.Label Dimensiune 
      AutoSize        =   -1  'True
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "32"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   840
      TabIndex        =   4
      Top             =   1200
      Width           =   180
   End
   Begin VB.Image fundal 
      Height          =   5415
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7095
   End
End
Attribute VB_Name = "Scan4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Dim PingTimes As Integer
Dim Speed As Long
Dim IP As String
Dim KeepGoing As Integer
Dim TotalNum As Long
Dim iReturn As Long, sLowByte As String, sHighByte As String
Dim sMsg As String, HostLen As Long
Dim Hostent As Hostent, PointerToPointer As Long, ListAddress As Long
Dim WSAdata As WSAdata, DotA As Long, DotAddr As String, ListAddr As Long
Dim MaxUDP As Long, MaxSockets As Long, i As Integer
Dim Description As String, Status As String
Dim ExitTheFor As Integer
' Ping Variables
Dim bReturn As Boolean, hIP As Long
Dim szBuffer As String
Dim Addr As Long
Dim RCode As String
Dim RespondingHost As String
' TRACERT Variables
Dim TraceRT As Boolean
Dim TTL As Integer
' WSock32 Constants
Const WS_VERSION_MAJOR = &H101 \ &H100 And &HFF&
Const WS_VERSION_MINOR = &H101 And &HFF&
Const MIN_SOCKETS_REQD = 0

Private Sub c2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
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
Unload Me
End Sub

Private Sub Jos_Click()
On Error Resume Next
Me.WindowState = 1
End Sub

Private Sub yo_ping_Click()
    Speed = 0
    PingTimes = 0
    yo_ping.Enabled = False
    ScrollTimes.Enabled = False
    ScrollPacket.Enabled = False
    'Pinguin.Text = ""
    
    Pinguin.Text = Pinguin.Text & "######### Trimit " & Dimensiune.Caption & " Bytes" & " catre " & IP_ul.Text & "  -  " & Time & vbCrLf & "###" & vbCrLf
    Pinguin.SelStart = Len(Pinguin.Text)
    
    szBuffer = Space(Val(Dimensiune))
    vbWSAStartup
    If Len(IP_ul.Text) = 0 Then
        vbGetHostName
    End If
    vbGetHostByName
    vbIcmpCreateFile
    pIPo2.TTL = Trim$(255)
    '
    For Times = 1 To pinguri
    If ExitTheFor = 1 Then ExitTheFor = 0: Exit For
    vbIcmpSendEcho
    Next
    vbIcmpCloseHandle
    vbWSACleanup
    ScrollTimes.Enabled = True
    ScrollPacket.Enabled = True
    yo_ping.Enabled = True
    On Error GoTo skipit
    Speed = Speed / PingTimes
    Pinguin.Text = Pinguin.Text & "###" & vbCrLf & "######### In medie un pachet se intoarce in aproximativ " & Speed & "ms, la ora " & Time & vbCrLf & vbCrLf
    Pinguin.SelStart = Len(Pinguin.Text)
    Exit Sub
skipit:
End Sub

Public Sub GetRCode()
RCode = ""
    If pIPe.Status = 0 Then RCode = "Succes"


    DoEvents

        If RCode <> "" Then
            If RCode = "Succes" Then
                Speed = Speed + Val(Trim$(CStr(pIPe2.RoundTripTime)))
                Pinguin.Text = Pinguin.Text + "###  [ Raspuns de la " + RespondingHost + " ] -  Bytes=" + Trim$(CStr(pIPe2.DataSize)) + "  RTT=" + Trim$(CStr(pIPe2.RoundTripTime)) + "ms  TTL=" + Trim$(CStr(pIPe2.Options.TTL)) + vbCrLf
                Pinguin.SelStart = Len(Pinguin.Text)
            Exit Sub
            End If
            KeepGoing = 1
            Pinguin.Text = Pinguin.Text & RCode
        Else
            KeepGoing = 1
            Pinguin.Text = Pinguin.Text & RCode
        End If
        Pinguin.SelStart = Len(Pinguin.Text)
    End Sub


Public Sub vbGetHostByName()
    Dim szString As String
    IP_ul = Trim$(IP_ul.Text)
    szString = String(64, &H0)
    IP_ul = IP_ul + Right$(szString, 64 - Len(IP_ul))

    If gethostbyname(IP_ul) = SOCKET_ERROR Then
        sMsg = "Eroare la winsock - " & Str$(WSAGetLastError())
        Pinguin.Text = sMsg
        ExitTheFor = 1
    Else
        PointerToPointer = gethostbyname(IP_ul) ' Get the pointer to the address of the winsock hostent structure
        CopyMemory Hostent.h_name, ByVal _
        PointerToPointer, Len(Hostent) ' Copy Winsock structure to the VisualBasic structure
        ListAddress = Hostent.h_addr_list ' Get the ListAddress of the Address List
        CopyMemory ListAddr, ByVal ListAddress, 4 ' Copy Winsock structure To the VisualBasic structure
        CopyMemory IPLong2, ByVal ListAddr, 4 ' Get the first list entry from the Address List
        CopyMemory Addr, ByVal ListAddr, 4
        IP = Trim$(CStr(Asc(IPLong2.Byte4)) + "." + CStr(Asc(IPLong2.Byte3)) _
        + "." + CStr(Asc(IPLong2.Byte2)) + "." + CStr(Asc(IPLong2.Byte1)))
    End If
End Sub


Public Sub vbGetHostName()
    
    IP_ul = String(64, &H0)
    


    If gethostname(IP_ul, HostLen) = SOCKET_ERROR Then
        sMsg = "Eroare wsock32 - " & Str$(WSAGetLastError())
        Pinguin.Text = sMsg
        ExitTheFor = 1
    Else
        IP_ul = Left$(Trim$(IP_ul), Len(Trim$(IP_ul)) - 1)
        IP_ul.Text = IP_ul
    End If
End Sub


Public Sub vbIcmpSendEcho()
    Dim NbrOfPkts As Integer
    For NbrOfPkts = 1 To Trim$(1)

        DoEvents
            bReturn = IcmpSendEcho(hIP, Addr, szBuffer, Len(szBuffer), pIPo2, pIPe2, Len(pIPe2) + 8, 2700)
            If bReturn Then
                If KeepGoing = 1 Then KeepGoing = 0: Exit For
                PingTimes = PingTimes + 1
                RespondingHost = CStr(pIPe2.Address(0)) + "." + CStr(pIPe2.Address(1)) + "." + CStr(pIPe2.Address(2)) + "." + CStr(pIPe2.Address(3))
                GetRCode
            Else
                Pinguin.Text = Pinguin.Text + "###  Timpul de raspuns de la " & IP_ul.Text & " a expirat." + vbCrLf
                Pinguin.SelStart = Len(Pinguin.Text)
            End If
        Next NbrOfPkts
    End Sub


Sub vbWSAStartup()
Dim wsdaata As WSAdata
    iReturn = WSAStartup(&H101, WSAdata)


    If iReturn <> 0 Then ' If WSock32 error, then tell me about it
        Pinguin.Text = "WSock32.dll nu raspunde la comenzi !"
        ExitTheFor = 1
    End If


    If LoByte(WSAdata.wVersion) < WS_VERSION_MAJOR Or (LoByte(WSAdata.wVersion) = WS_VERSION_MAJOR And HiByte(WSAdata.wVersion) < WS_VERSION_MINOR) Then
        sHighByte = Trim$(Str$(HiByte(WSAdata.wVersion)))
        sLowByte = Trim$(Str$(LoByte(WSAdata.wVersion)))
        sMsg = "winsock - " & sLowByte & "." & sHighByte
        sMsg = sMsg & " nu este suportat. "
        Pinguin.Text = sMsg
        ExitTheFor = 1
        End
    End If


    If WSAdata.iMaxSockets < MIN_SOCKETS_REQD Then
        sMsg = "Programul are nevoie de minim "
        sMsg = sMsg & Trim$(Str$(MIN_SOCKETS_REQD)) & " sock-uri."
            Pinguin.Text = sMsg
            ExitTheFor = 1
        End
    End If
    
    MaxSockets = WSAdata.iMaxSockets


    If MaxSockets < 0 Then
        MaxSockets = 65536 + MaxSockets
    End If
    MaxUDP = WSAdata.iMaxUdpDg


    If MaxUDP < 0 Then
        MaxUDP = 65536 + MaxUDP
    End If
    
    Description = ""


    For i = 0 To WSADESCRIPTION_LEN
        If WSAdata.szDescription(i) = 0 Then Exit For
        Description = Description + Chr$(WSAdata.szDescription(i))
    Next i
    Status = ""


    For i = 0 To WSASYS_STATUS_LEN
        If WSAdata.szSystemStatus(i) = 0 Then Exit For
        Status = Status + Chr$(WSAdata.szSystemStatus(i))
    Next i
End Sub


Public Function HiByte(ByVal wParam As Integer)
    HiByte = wParam \ &H100 And &HFF&
End Function


Public Function LoByte(ByVal wParam As Integer)
    LoByte = wParam And &HFF&
End Function


Public Sub vbWSACleanup()
    iReturn = WSACleanup()
End Sub


Public Sub vbIcmpCloseHandle()
    bReturn = IcmpCloseHandle(hIP)
End Sub


Public Sub vbIcmpCreateFile()
    hIP = IcmpCreateFile()
End Sub


Private Sub Form_Load()
Me.Icon = Instalare.Icon
fundal.Picture = Captura.Incarcare.Picture
IP_ul.Text = soclu.LocalIP

ScrollPacket.Value = 32
vbWSAStartup
vbWSACleanup
End Sub


Private Sub ScrollPacket_Change()
Dimensiune = ScrollPacket.Value
End Sub

Private Sub ScrollTimes_Change()
pinguri = ScrollTimes.Value
End Sub

