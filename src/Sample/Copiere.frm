VERSION 5.00
Begin VB.Form Copiere_HTM 
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   Caption         =   "Copiaza/Instaleaza"
   ClientHeight    =   2175
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5640
   LinkTopic       =   "Form1"
   ScaleHeight     =   2175
   ScaleWidth      =   5640
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Bara_copiere 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00808080&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   840
      Picture         =   "Copiere.frx":0000
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   7
      Top             =   1200
      Visible         =   0   'False
      Width           =   3855
   End
   Begin VB.PictureBox Bara_indigo 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   120
      Picture         =   "Copiere.frx":0F77
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   4
      Top             =   2280
      Visible         =   0   'False
      Width           =   3855
   End
   Begin PC_World.Buton_3D_General Instaleaza 
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   1680
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   661
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
      XPColor_Pressed =   4194304
      XPColor_Hover   =   14654290
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   16777215
   End
   Begin PC_World.Buton_3D_General Copiaza 
      Height          =   375
      Left            =   2040
      TabIndex        =   1
      Top             =   1680
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   661
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
      XPColor_Pressed =   4194304
      XPColor_Hover   =   14654290
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   16777215
   End
   Begin PC_World.Buton_3D_General Iesire 
      Height          =   375
      Left            =   3720
      TabIndex        =   2
      Top             =   1680
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   661
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
      XPColor_Pressed =   4194304
      XPColor_Hover   =   14654290
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   16777215
   End
   Begin VB.Image Iconita 
      Height          =   240
      Left            =   480
      Picture         =   "Copiere.frx":1EE6
      Top             =   450
      Width           =   240
   End
   Begin VB.Label nume 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Nume program"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   0
      TabIndex        =   9
      Top             =   120
      Width           =   5655
   End
   Begin VB.Label Cale_dimensiune 
      AutoSize        =   -1  'True
      Caption         =   "c:\PC_World\zulu.exe"
      Height          =   195
      Left            =   120
      TabIndex        =   8
      Top             =   2760
      Width           =   1590
   End
   Begin VB.Label Nume_fisier_C 
      BackStyle       =   0  'Transparent
      Caption         =   "Cale fisier."
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   480
      TabIndex        =   6
      Top             =   840
      Width           =   4695
   End
   Begin VB.Label dimensiune 
      BackStyle       =   0  'Transparent
      Caption         =   "Dimensiune fisier."
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   840
      TabIndex        =   5
      Top             =   480
      Width           =   4575
   End
   Begin VB.Label Intrebare 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Doriti sa instalati sau sa copiati programul selectat ?"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1320
      Width           =   5415
   End
   Begin VB.Image fundal 
      Height          =   2295
      Left            =   0
      Picture         =   "Copiere.frx":22B1
      Stretch         =   -1  'True
      Top             =   -120
      Width           =   5655
   End
End
Attribute VB_Name = "Copiere_HTM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long



Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Private Sub Copiaza_Click()
On Error Resume Next
Alegere_HTML = True
Alegere_HTML_asteapta = True

MegaHz (App.Path & "\aferent\Negativ\voce\copiaza_in.wav")

Alegere_dir.Show

Me.Hide

Do
DoEvents
Loop While Alegere_HTML_asteapta = True

Me.Show

If Cale_kit_HTML = "" Then Exit Sub

Bara_copiere.Visible = True
wwww = Copiere_Fisier(Nume_Fisier_HTML, Cale_kit_HTML & "\" & nume.Caption & ".exe")
Bara_copiere.Visible = False

Alegere_HTML = False

Unload Me
End Sub

Private Sub dimensiune_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Form_Load()
On Error Resume Next

gg = FreeFile

DoEvents

Open Nume_Fisier_HTML For Binary As #gg

DoEvents

dimensiune_fisier = LOF(gg)

If Len(dimensiune_fisier) <= 3 Then c666 = "b"
If Len(dimensiune_fisier) <= 6 And Len(dimensiune_fisier) > 3 Then c666 = "Kb"
If Len(dimensiune_fisier) <= 9 And Len(dimensiune_fisier) > 6 Then c666 = "Mb"
If Len(dimensiune_fisier) > 9 Then c666 = "Gb"

If Len(dimensiune_fisier) = 4 Then
dimensiune_fisier = Mid(dimensiune_fisier, 1, 1)
End If

If Len(dimensiune_fisier) = 5 Then
dimensiune_fisier = Mid(dimensiune_fisier, 1, 2)
End If

If Len(dimensiune_fisier) = 7 Then
dimensiune_fisier = Mid(dimensiune_fisier, 1, 1)
End If

If Len(dimensiune_fisier) = 8 Then
dimensiune_fisier = Mid(dimensiune_fisier, 1, 2)
End If

If Len(dimensiune_fisier) = 6 Then
dimensiune_fisier = Mid(dimensiune_fisier, 1, 3)
End If

If Len(dimensiune_fisier) = 9 Then
dimensiune_fisier = Mid(dimensiune_fisier, 1, 3)
End If
'1.111.110.300

If dimensiune_fisier <> "" Then
dimensiune.Caption = "Pachetul are " & dimensiune_fisier & " " & c666
Else
dimensiune.Caption = "Nu s-a putut citi dimensiunea fisierului !"
End If

Close #gg
End Sub

Private Sub fundal_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next

If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Iconita_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Iesire_Click()
On Error Resume Next
MegaHz (App.Path & "\aferent\Negativ\voce\afara.wav")
Unload Me
End Sub

Private Sub Instaleaza_Click()
On Error Resume Next

MegaHz (App.Path & "\aferent\Negativ\voce\instalare.wav")
ShellExecute hWnd, "open", Nume_Fisier_HTML, vbNullString, vbNullString, conSwNormal

Unload Me
End Sub

Private Sub Intrebare_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Nume_fisier_C_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Function Copiere_Fisier(src As String, dst As String) As Single
On Error Resume Next
 Static Buf$
 Dim BTest!, FSize!
 Dim Chunk%, F1%, F2%

 Const BUFSIZE = 1024

'Un buffer mai mare e mai bun dar nu tre' sa depasesc 64k

   If Dir(src) = "" Then MsgBox "Fisierul nu a fost gasit": Exit Function
   If Len(Dir(dst)) Then
      If MsgBox(UCase(dst) & Chr(13) & Chr(10) & "Fisierul exista ! " & vbCrLf & vbCrLf & "Suprascriem fisierul?", 4) <> 6 Then Exit Function
      Kill dst
   End If
 
 Bara_copiere.Cls
 
 Arata_La_suta.Enabled = True
 
   On Error GoTo Eruare
   F1 = FreeFile
   Open src For Binary As F1
   F2 = FreeFile
   Open dst For Binary As F2
 
   FSize = LOF(F1)
   BTest = FSize - LOF(F2)
   Do
      If BTest < BUFSIZE Then
         Chunk = BTest
      Else
         Chunk = BUFSIZE
      End If
      Buf = String(Chunk, " ")
      Get F1, , Buf
      Put F2, , Buf
      BTest = FSize - LOF(F2)

zz = (Bara_copiere.ScaleWidth / 100) * (100 - Int(100 * BTest / FSize))

Bara_copiere.Cls
Call BitBlt(Bara_copiere.hDC, 0, 0, Int(zz), 25, Bara_indigo.hDC, 0, 0, vbSrcCopy)



Paul_BTest = BTest
Paul_FSize = FSize

DoEvents
   Loop Until BTest = 0
   Close F1
   Close F2

   Copiere_Fisier = FSize
   Exit Function

Eruare:
   MsgBox "Copierea fisierului nu a putut fi facuta !"
   Close F1
   Close F2
   
   Arata_La_suta.Enabled = False
   
   Exit Function
End Function

Private Sub nume_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub
