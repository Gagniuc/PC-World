VERSION 5.00
Begin VB.Form Captura 
   BackColor       =   &H00404040&
   BorderStyle     =   0  'None
   Caption         =   "Captura"
   ClientHeight    =   8040
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10080
   Icon            =   "Captura.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   536
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   672
   StartUpPosition =   2  'CenterScreen
   Begin PC_World.Listare_Tip_GIF EcranMare 
      Height          =   7215
      Left            =   240
      Top             =   600
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   12726
      BackColor       =   0
      BorderStyle     =   1
   End
   Begin PC_World.Buton_3D_General Micro 
      Height          =   255
      Left            =   9360
      TabIndex        =   0
      Top             =   60
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
   Begin PC_World.Buton_3D_General X_Iesire 
      Height          =   255
      Left            =   9720
      TabIndex        =   1
      Top             =   60
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
   Begin VB.Label Bara_principal 
      BackColor       =   &H00C48644&
      BackStyle       =   0  'Transparent
      Caption         =   " PC World    CD - Februarie 2005"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   9855
   End
   Begin VB.Image Incarcare 
      Height          =   8175
      Left            =   0
      Picture         =   "Captura.frx":08CA
      Stretch         =   -1  'True
      Top             =   -120
      Width           =   10095
   End
End
Attribute VB_Name = "Captura"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Private Sub Bara_principal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub EcranMare_Click()
On Error Resume Next
If Bula_Sunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")
End If
Bula_Sunet = False
Mesaj_sunet.Caption = "OFF"

MegaHz (App.Path & "\aferent\Negativ\voce\afara.wav")

Unload Me
End Sub

Private Sub Micro_Click()
Me.WindowState = 1
End Sub

Private Sub X_Iesire_Click()
Unload Me
End Sub
