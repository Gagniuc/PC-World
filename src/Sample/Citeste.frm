VERSION 5.00
Begin VB.Form Citeste 
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   Caption         =   " Citeste - ma !"
   ClientHeight    =   5655
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7650
   Icon            =   "Citeste.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5655
   ScaleWidth      =   7650
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Formular_citire 
      BackColor       =   &H00400000&
      ForeColor       =   &H00FFFFFF&
      Height          =   4215
      Left            =   360
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   720
      Width           =   6975
   End
   Begin PC_World.Buton_3D_General Ok 
      Height          =   255
      Left            =   2880
      TabIndex        =   1
      Top             =   5160
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   450
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
      BackColor       =   4194304
      ForeColor       =   16777215
   End
   Begin VB.Label sigla 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "PC World"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   2640
      TabIndex        =   2
      Top             =   120
      Width           =   2295
   End
   Begin VB.Image Image1 
      Height          =   5655
      Left            =   0
      Top             =   0
      Width           =   7695
   End
End
Attribute VB_Name = "Citeste"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Private Sub fundal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Ok_Click()
On Error Resume Next
If Bula_Sunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")
End If
Bula_Sunet = False
Mesaj_sunet.Caption = "OFF"

MegaHz (App.Path & "\aferent\Negativ\voce\apasa.wav")

Unload Me
End Sub

Private Sub sigla_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub
