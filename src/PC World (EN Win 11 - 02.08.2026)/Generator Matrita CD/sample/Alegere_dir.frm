VERSION 5.00
Begin VB.Form Alegere_dir 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   " Alegere director instalare"
   ClientHeight    =   5070
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4080
   Icon            =   "Alegere_dir.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Alegere_dir.frx":2982
   ScaleHeight     =   5070
   ScaleWidth      =   4080
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.DriveListBox partitie 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   2400
      TabIndex        =   2
      Top             =   240
      Width           =   1455
   End
   Begin VB.DirListBox Directorul_este 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Lucida Console"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   3210
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   3615
   End
   Begin VB.TextBox Cale_director1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   4080
      Width           =   3615
   End
   Begin PC_World.Buton_3D_General Da 
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   4560
      Width           =   1815
      _ExtentX        =   3201
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
   Begin PC_World.Buton_3D_General Iesire 
      Height          =   255
      Left            =   2160
      TabIndex        =   4
      Top             =   4560
      Width           =   1695
      _ExtentX        =   2990
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
   Begin VB.Label Stema 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
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
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "Alegere_dir"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Stema_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Da_Click()
On Error Resume Next

Cale_director1.Text = Directorul_este.Path

baubau = Right(Directorul_este.Path, 1)
If baubau = "\" Then
rtty = Directorul_este.Path
Else
rtty = Directorul_este.Path & "\"
End If

If Alegere_HTML = True Then

Alegere_HTML_asteapta = False
Cale_kit_HTML = rtty

Else
On Error Resume Next
Instalare.Cale_Copiaza_real.Caption = rtty & Instalare.Meniu_Programe(Index_Cunoscut).Caption & ".exe"

Instalare.Da_domnule_real.Caption = rtty & Instalare.Meniu_Programe(Index_Cunoscut).Caption & ".exe"
Instalare.Da_domnule.Caption = Recalibrare_text(Instalare.Da_domnule, Instalare.Da_domnule_real, Instalare.Da_domnule_real.Caption)
If SigurantaSunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")
End If
SigurantaSunet = False
BSunetNU.Visible = True
End If

MegaHz (App.Path & "\aferent\Negativ\voce\afara.wav")

Me.Hide
End Sub

Private Sub Directorul_este_Change()
Cale_director1.Text = Directorul_este.Path
End Sub

Private Sub partitie_Change()
On Error Resume Next
Directorul_este.Path = partitie.Drive
End Sub

Private Sub Iesire_Click()
On Error Resume Next
If Alegere_HTML = True Then


Else
If Cale_director1.Text = "" Then
Instalare.Da_domnule.Caption = "C:\PC_World\" & xx(5) & ".exe"
Cale_director1.Text = Instalare.Da_domnule.Caption
End If
If Bula_Sunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")
End If
Bula_Sunet = False
Mesaj_sunet.Caption = "OFF"
End If

MegaHz (App.Path & "\aferent\Negativ\voce\afara.wav")


Unload Me
End Sub
