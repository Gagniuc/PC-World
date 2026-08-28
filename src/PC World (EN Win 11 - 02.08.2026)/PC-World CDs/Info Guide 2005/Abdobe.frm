VERSION 5.00
Begin VB.Form Intro_A 
   BackColor       =   &H00400000&
   BorderStyle     =   0  'None
   Caption         =   "Instalez Acrobat Reader 6.0.1 ?"
   ClientHeight    =   4215
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5895
   LinkTopic       =   "Form1"
   Picture         =   "Abdobe.frx":0000
   ScaleHeight     =   4215
   ScaleWidth      =   5895
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin Project1.Buton_3D_General Iesire 
      Height          =   495
      Left            =   3120
      TabIndex        =   0
      Top             =   3360
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   873
      Caption         =   "Nu"
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
   End
   Begin Project1.Buton_3D_General ok 
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   3360
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   873
      Caption         =   "Da"
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
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H00FFFFFF&
      Height          =   855
      Left            =   120
      Top             =   1560
      Width           =   5655
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   $"Abdobe.frx":4EA7
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   360
      TabIndex        =   4
      Top             =   1800
      Width           =   5295
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00FFFFFF&
      Height          =   4215
      Left            =   0
      Top             =   0
      Width           =   5895
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFFFF&
      Height          =   855
      Left            =   120
      Top             =   120
      Width           =   5655
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Doriti instalarea programului Acrobat Reader 6.0.1 direct de pe CD ?"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   2880
      Width           =   4935
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   $"Abdobe.frx":4F32
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   360
      TabIndex        =   2
      Top             =   240
      Width           =   5415
   End
End
Attribute VB_Name = "Intro_A"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()
Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2


Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Iesire_Click()
eu.msms.Visible = True
eu.Show
Me.Hide
End Sub

Private Sub ok_Click()
eu.Show
ShellExecute hWnd, "open", App.Path & "\Adobe_Reader_6.0.exe", vbNullString, vbNullString, conSwNormal
Me.Hide
End Sub
