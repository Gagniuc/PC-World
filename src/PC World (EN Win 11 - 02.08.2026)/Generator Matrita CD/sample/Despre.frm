VERSION 5.00
Begin VB.Form DespreYO 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Despre ..."
   ClientHeight    =   4110
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5535
   Icon            =   "Despre.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4110
   ScaleWidth      =   5535
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Pic 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   315
      Left            =   8160
      ScaleHeight     =   315
      ScaleWidth      =   375
      TabIndex        =   5
      Top             =   120
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   $"Despre.frx":2982
      ForeColor       =   &H00000080&
      Height          =   855
      Left            =   240
      MousePointer    =   2  'Cross
      TabIndex        =   6
      Top             =   3240
      Width           =   5055
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H000000FF&
      Height          =   4095
      Left            =   0
      Top             =   0
      Width           =   5535
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00000080&
      BorderWidth     =   3
      Height          =   4095
      Left            =   0
      Top             =   0
      Width           =   5535
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "  Software && Copyright© by                                                    Paul Gagniuc Aurelian"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   720
      TabIndex        =   4
      Top             =   2520
      Width           =   4095
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000012&
      BackStyle       =   0  'Transparent
      Caption         =   "  Software && Copyright© by                                                    Paul Gagniuc Aurelian"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   615
      Left            =   720
      TabIndex        =   3
      Top             =   2520
      Width           =   4095
   End
   Begin VB.Image Image1 
      Height          =   1230
      Left            =   2040
      MouseIcon       =   "Despre.frx":2A50
      MousePointer    =   99  'Custom
      Picture         =   "Despre.frx":331A
      ToolTipText     =   "Iesire"
      Top             =   360
      Width           =   1320
   End
   Begin VB.Label PaulAurelianGagniuc 
      BackStyle       =   0  'Transparent
      Caption         =   "www.PCWorld.ro"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   375
      Left            =   1560
      MouseIcon       =   "Despre.frx":4F3E
      MousePointer    =   2  'Cross
      TabIndex        =   2
      Top             =   2040
      Width           =   2295
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Novus Ordo , Anno Domini 2004"
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   1560
      TabIndex        =   1
      Top             =   120
      Width           =   2415
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   " PaulGagniuc@yahoo.com"
      ForeColor       =   &H00000080&
      Height          =   255
      Left            =   1680
      MousePointer    =   2  'Cross
      TabIndex        =   0
      Top             =   1680
      Width           =   2055
   End
End
Attribute VB_Name = "DespreYO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*******************************************************************************************

'                       Software & Copyright by Paul Gagniuc Aurelian

'*******************************************************************************************
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

Private Declare Function SendMessage Lib "user32" _
Alias "SendMessageA" (ByVal hWnd As Long, _
ByVal wMsg As Long, _
ByVal wParam As Long, _
lParam As Any) As Long

Private Const SRCCOPY = &HCC0020
Private Const RDW_ERASE = &H4

Private Type RECT
Left As Long
Top As Long
Right As Long
Bottom As Long
End Type

Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Private Declare Function GetDC Lib "user32" (ByVal hWnd As Long) As Long
Private Declare Function GetDesktopWindow Lib "user32" () As Long
Private Declare Function CreateCompatibleBitmap Lib "gdi32" (ByVal hDC As Long, ByVal nWidth As Long, ByVal nHeight As Long) As Long
Private Declare Function SelectObject Lib "gdi32" (ByVal hDC As Long, ByVal hObject As Long) As Long
Private Declare Function DeleteDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function RedrawWindow Lib "user32" (ByVal hWnd As Long, lprcUpdate As RECT, ByVal hrgnUpdate As Long, ByVal fuRedraw As Long) As Long

Dim Moving As Boolean
Dim mX As Long
Dim mY As Long

Private Declare Sub ReleaseCapture Lib "user32" ()
Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Private Sub Form_KeyPress(KeyAscii As Integer)
Unload Me
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim lngReturnValue As Long
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(DespreYO.hWnd, WM_NCLBUTTONDOWN, _
HTCAPTION, 0&)
End If
PaulAurelianGagniuc.ForeColor = &H80&
Label5.ForeColor = &H80&
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
PaulAurelianGagniuc.ForeColor = &H80&
Label5.ForeColor = &H80&
End Sub

Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim lngReturnValue As Long
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Form3.hWnd, WM_NCLBUTTONDOWN, _
HTCAPTION, 0&)
End If
PaulAurelianGagniuc.ForeColor = &H80&
Label5.ForeColor = &H80&
End Sub

Private Sub Label1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim lngReturnValue As Long
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Form3.hWnd, WM_NCLBUTTONDOWN, _
HTCAPTION, 0&)
End If
End Sub

Private Sub Label5_Click()
Success = ShellExecute(0&, vbNullString, "mailto:" & email, vbNullString, "C:\", SW_SHOWNORMAL)
End Sub


Private Sub PaulAurelianGagniuc_Click()
ShellExecute hWnd, "open", "http://www.pcworld.ro", vbNullString, vbNullString, conSwNormal
End Sub

Private Sub Label5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label5.ForeColor = &HFF&
PaulAurelianGagniuc.ForeColor = &H80&
End Sub

Private Sub PaulAurelianGagniuc_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
PaulAurelianGagniuc.ForeColor = &HFF&
Label5.ForeColor = &H80&
End Sub

Private Sub Image1_Click()
Dim CDC As Long, DTWND As Long, DTDC As Long
Dim CBMP As Long, frmWidth As Long, frmHeight As Long
Dim PrevX As Long, PrevY As Long
Dim TempDC As Long, TempBMP As Long
Dim TempRect As RECT


frmWidth = DespreYO.Width \ Screen.TwipsPerPixelX
frmHeight = DespreYO.Height \ Screen.TwipsPerPixelY


DTWND = GetDesktopWindow
DTDC = GetDC(DTWND)
CDC = CreateCompatibleDC(DTDC)
CBMP = CreateCompatibleBitmap(DTDC, frmWidth, frmHeight)
Call SelectObject(CDC, CBMP)
TempDC = CreateCompatibleDC(DTDC)
TempBMP = CreateCompatibleBitmap(DTDC, frmWidth, frmHeight)
SelectObject TempDC, TempBMP

ffff = Me.Top
uuuu = Me.Left
Pic.Top = 0
Pic.Left = 0
Pic.Width = Me.Width
Pic.Height = Me.Height

PrevX = Me.Left \ Screen.TwipsPerPixelX
PrevY = Me.Top \ Screen.TwipsPerPixelY

Me.Hide
TempRect.Left = PrevX
TempRect.Right = PrevX + frmWidth
TempRect.Top = PrevY
TempRect.Bottom = PrevY + frmHeight
RedrawWindow DTWND, TempRect, ByVal 0&, RDW_ERASE
DoEvents
BitBlt CDC, 0&, 0&, frmWidth, frmHeight, DTDC, PrevX, PrevY, SRCCOPY
Me.Show
Me.Top = ffff
Me.Left = uuuu
DoEvents
BitBlt TempDC, 0&, 0&, frmWidth, frmHeight, DTDC, PrevX, PrevY, SRCCOPY

Pic.ZOrder 0
Pic.Visible = True
BitBlt Pic.hDC, 0&, 0&, frmWidth, frmHeight, TempDC, 0&, 0&, SRCCOPY
Pic.Picture = Pic.Image

Pic.AutoRedraw = False
Dim i As Long, tX As Long, tY As Long, SqSize As Long
SqSize = Val(2)
Randomize Timer
For i = 1 To Val(100000)
 tX = Rnd(5) * frmWidth
 tY = Rnd(7) * frmHeight
 BitBlt Pic.hDC, tX, tY, SqSize, SqSize, CDC, tX, tY, SRCCOPY
Next i
DeleteDC CDC
DeleteDC TempDC
Unload Me
End Sub


