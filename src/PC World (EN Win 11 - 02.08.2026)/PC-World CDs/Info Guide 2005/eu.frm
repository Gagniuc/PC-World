VERSION 5.00
Begin VB.Form eu 
   BackColor       =   &H00400000&
   BorderStyle     =   0  'None
   Caption         =   "Info Guide 2005"
   ClientHeight    =   9270
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12900
   Icon            =   "eu.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "eu.frx":0ECA
   ScaleHeight     =   618
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   860
   StartUpPosition =   2  'CenterScreen
   Begin Project1.Buton_3D_General webul 
      Height          =   375
      Left            =   7920
      TabIndex        =   25
      Top             =   7440
      Visible         =   0   'False
      Width           =   3735
      _ExtentX        =   6588
      _ExtentY        =   661
      Caption         =   "Companiile IT&&C pe INTERNET"
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      ShowFocusRect   =   0   'False
      XPColor_Pressed =   4194304
      XPColor_Hover   =   4194304
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   14737632
      TransparentBG   =   -1  'True
   End
   Begin VB.FileListBox Fisiere_Sec 
      Height          =   285
      Hidden          =   -1  'True
      Left            =   3000
      Pattern         =   "*.htm"
      TabIndex        =   22
      Top             =   9480
      Width           =   2055
   End
   Begin VB.Timer da_nu 
      Left            =   2400
      Top             =   9480
   End
   Begin VB.FileListBox Lista_fisier 
      Height          =   285
      Hidden          =   -1  'True
      Left            =   120
      Pattern         =   "*.htm"
      TabIndex        =   19
      Top             =   9480
      Width           =   2055
   End
   Begin VB.Frame bula 
      BackColor       =   &H00400000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   5655
      Index           =   1
      Left            =   5280
      TabIndex        =   7
      Top             =   9360
      Visible         =   0   'False
      Width           =   7455
      Begin VB.OptionButton av2 
         BackColor       =   &H00400000&
         Caption         =   "Caut produse/activitati sau servicii oferite ..."
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   3840
         TabIndex        =   17
         Top             =   360
         Value           =   -1  'True
         Width           =   3855
      End
      Begin VB.OptionButton av1 
         BackColor       =   &H00400000&
         Caption         =   "Caut firma ..."
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   3840
         TabIndex        =   16
         Top             =   0
         Width           =   2415
      End
      Begin VB.ListBox List2 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         ForeColor       =   &H00FFFFFF&
         Height          =   3540
         ItemData        =   "eu.frx":29FE6
         Left            =   0
         List            =   "eu.frx":29FE8
         TabIndex        =   12
         Top             =   1200
         Width           =   7335
      End
      Begin VB.TextBox Cautare 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   9
         Text            =   "Aici se scrie cuvantul de interes ..."
         Top             =   840
         Width           =   6255
      End
      Begin Project1.Buton_3D_General Command1 
         Height          =   255
         Left            =   0
         TabIndex        =   10
         Top             =   840
         Width           =   975
         _ExtentX        =   450
         _ExtentY        =   450
         Caption         =   "Cauta"
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
      Begin VB.Image Image1 
         Height          =   720
         Left            =   6720
         Picture         =   "eu.frx":29FEA
         Top             =   4920
         Width           =   720
      End
      Begin VB.Label Gagniuc 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Cautare avansata"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Left            =   0
         TabIndex        =   18
         Top             =   0
         Width           =   3735
      End
      Begin VB.Line Line3 
         BorderColor     =   &H00808080&
         X1              =   240
         X2              =   6360
         Y1              =   5520
         Y2              =   5520
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00808080&
         X1              =   0
         X2              =   6120
         Y1              =   5400
         Y2              =   5400
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00808080&
         X1              =   0
         X2              =   7320
         Y1              =   720
         Y2              =   720
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Numarul firmelor gasite."
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   0
         TabIndex        =   11
         Top             =   4920
         Width           =   6465
      End
   End
   Begin Project1.Buton_3D_General Iesire 
      Height          =   255
      Left            =   12480
      TabIndex        =   3
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
   End
   Begin VB.Frame bula 
      BackColor       =   &H00400000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   5655
      Index           =   0
      Left            =   5040
      TabIndex        =   1
      Top             =   1725
      Visible         =   0   'False
      Width           =   7455
      Begin VB.ListBox List3 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         ForeColor       =   &H00FFFFFF&
         Height          =   4125
         IntegralHeight  =   0   'False
         ItemData        =   "eu.frx":2AEB4
         Left            =   3840
         List            =   "eu.frx":2AEB6
         TabIndex        =   23
         Top             =   1200
         Width           =   3495
      End
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         BackColor       =   &H00404040&
         ForeColor       =   &H00FFFFFF&
         Height          =   4125
         IntegralHeight  =   0   'False
         ItemData        =   "eu.frx":2AEB8
         Left            =   0
         List            =   "eu.frx":2AEBA
         TabIndex        =   2
         Top             =   1200
         Width           =   3615
      End
      Begin VB.Line z2 
         BorderColor     =   &H00808080&
         X1              =   0
         X2              =   7320
         Y1              =   5520
         Y2              =   5520
      End
      Begin VB.Line z1 
         BorderColor     =   &H00808080&
         X1              =   0
         X2              =   7320
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Firme producatoare"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   0
         TabIndex        =   15
         Top             =   720
         Width           =   3615
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Firme de distributie"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   3840
         TabIndex        =   14
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label Sectiune 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Mesagerie"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Left            =   0
         TabIndex        =   13
         Top             =   0
         Width           =   7815
      End
   End
   Begin Project1.Buton_3D_General Jos 
      Height          =   255
      Left            =   12120
      TabIndex        =   4
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
   End
   Begin Project1.Buton_3D_General I2 
      Height          =   375
      Left            =   4200
      TabIndex        =   20
      Top             =   360
      Visible         =   0   'False
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
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
   End
   Begin Project1.Buton_3D_General j2 
      Height          =   375
      Left            =   3720
      TabIndex        =   21
      Top             =   360
      Visible         =   0   'False
      Width           =   375
      _ExtentX        =   661
      _ExtentY        =   661
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
   End
   Begin Project1.Buton_3D_General Programare 
      Height          =   165
      Left            =   9600
      TabIndex        =   26
      Top             =   8955
      Width           =   3135
      _ExtentX        =   5530
      _ExtentY        =   291
      Caption         =   "Programare software si grafica de Paul Gagniuc"
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      ShowFocusRect   =   0   'False
      XPColor_Pressed =   4194304
      XPColor_Hover   =   4194304
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   16777215
      TransparentBG   =   -1  'True
   End
   Begin Project1.Buton_3D_General ajutor 
      Height          =   255
      Left            =   11760
      TabIndex        =   27
      Top             =   60
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
   End
   Begin VB.Image Buton_negativ 
      Height          =   1215
      Index           =   6
      Left            =   0
      ToolTipText     =   "Subansamble"
      Top             =   6240
      Width           =   2655
   End
   Begin VB.Image Buton_negativ 
      Height          =   1215
      Index           =   5
      Left            =   0
      ToolTipText     =   "Software"
      Top             =   5025
      Width           =   2055
   End
   Begin VB.Image Buton_IG 
      Height          =   1245
      Index           =   6
      Left            =   0
      Picture         =   "eu.frx":2AEBC
      Top             =   6225
      Visible         =   0   'False
      Width           =   2610
   End
   Begin VB.Image Buton_IG 
      Height          =   1200
      Index           =   5
      Left            =   0
      Picture         =   "eu.frx":2DBF0
      Top             =   5040
      Visible         =   0   'False
      Width           =   1890
   End
   Begin VB.Label msms 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Interfata nu va functiona corect fara Abdobe Reader !"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   165
      Left            =   9240
      TabIndex        =   24
      Top             =   600
      Visible         =   0   'False
      Width           =   3495
   End
   Begin VB.Image Intro 
      Height          =   6555
      Left            =   2655
      Picture         =   "eu.frx":2FB04
      Top             =   1335
      Width           =   10110
   End
   Begin VB.Label Mesagerie2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Info Guide 2005"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   6600
      TabIndex        =   8
      Top             =   720
      Width           =   5895
   End
   Begin VB.Label v1 
      BackStyle       =   0  'Transparent
      Caption         =   "Info Guide 2005"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   495
      Left            =   6480
      TabIndex        =   6
      Top             =   7920
      Width           =   4095
   End
   Begin VB.Label v3 
      BackStyle       =   0  'Transparent
      Caption         =   "Info Guide 2005"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   6600
      TabIndex        =   5
      Top             =   8040
      Width           =   3855
   End
   Begin VB.Label Mesagerie 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Info Guide 2005"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   6600
      TabIndex        =   0
      Top             =   840
      Width           =   6015
   End
   Begin VB.Image Buton_negativ 
      Height          =   1695
      Index           =   4
      Left            =   0
      ToolTipText     =   "Cautare avansata"
      Top             =   7440
      Width           =   3015
   End
   Begin VB.Image Buton_negativ 
      Height          =   1215
      Index           =   3
      Left            =   0
      ToolTipText     =   "Sisteme"
      Top             =   3840
      Width           =   1935
   End
   Begin VB.Image Buton_negativ 
      Height          =   1335
      Index           =   2
      Left            =   0
      ToolTipText     =   "Periferice"
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Image Buton_negativ 
      Height          =   1215
      Index           =   1
      Left            =   0
      ToolTipText     =   "Stocare date"
      Top             =   1320
      Width           =   2535
   End
   Begin VB.Image Buton_negativ 
      Height          =   1335
      Index           =   0
      Left            =   0
      ToolTipText     =   "Retele & Telecomunicatii"
      Top             =   0
      Width           =   4575
   End
   Begin VB.Image Buton_IG 
      Height          =   1410
      Index           =   4
      Left            =   0
      Picture         =   "eu.frx":53DDF
      Top             =   7710
      Visible         =   0   'False
      Width           =   2805
   End
   Begin VB.Image Buton_IG 
      Height          =   1215
      Index           =   3
      Left            =   0
      Picture         =   "eu.frx":568AE
      Top             =   3795
      Visible         =   0   'False
      Width           =   1800
   End
   Begin VB.Image Buton_IG 
      Height          =   1245
      Index           =   2
      Left            =   0
      Picture         =   "eu.frx":58731
      ToolTipText     =   "Unitati de stocare"
      Top             =   2565
      Visible         =   0   'False
      Width           =   2070
   End
   Begin VB.Image Buton_IG 
      Height          =   1200
      Index           =   1
      Left            =   0
      Picture         =   "eu.frx":5A961
      ToolTipText     =   "Stocare date"
      Top             =   1350
      Visible         =   0   'False
      Width           =   2475
   End
   Begin VB.Image Buton_IG 
      Height          =   1290
      Index           =   0
      Left            =   0
      Picture         =   "eu.frx":5D01C
      ToolTipText     =   "Sisteme"
      Top             =   0
      Visible         =   0   'False
      Width           =   4560
   End
End
Attribute VB_Name = "eu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()
Private Declare Function sndPlaySound Lib "winmm" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long



Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Dim GigaTXT(0 To 100) As String
Dim ccz As Variant
Dim Qbula As Boolean

Public Sectiune_eu As String

Private Sub ajutor_Click()
On Error Resume Next
Arata_date.bum.Visible = False
Arata_date.Bum2.Visible = True
'MsgBox App.Path & "\db\aferent\ajutor.htm"
Arata_date.Bum2.Navigate App.Path & "\db\aferent\ajutor.htm"
Arata_date.Gagniuc.Caption = "Ajutor"
Arata_date.Caption = "[ Ajutor ]"
Arata_date.Show

Sunet (App.Path & "\y.wav")
End Sub

Private Sub Buton_IG_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
'Buton_IG(Index).Picture = Buton_negativ(Index).Picture
End Sub

Private Sub Sunet(strFileName As String)
On Error Resume Next
    sndPlaySound strFileName, 1
End Sub

Private Sub Buton_negativ_Click(Index As Integer)
On Error GoTo 44

Dim iFile As Integer
Dim sRecordLine As String

Intro.Visible = False

List3.Clear
List1.Clear
ccz = 0

webul.Visible = True

For q = 0 To 100
DoEvents
GigaTXT(q) = ""
Next

Sunet (App.Path & "\x.wav")
'*************************************

If Index = 0 Then '*************************************

bula(1).Visible = False
bula(0).Visible = True
Sectiune.Caption = "Retele && Telecomunicatii"

Sectiune_eu = "Retele"
Fisiere_Sec.Path = App.Path & "\db\" & Sectiune_eu & "\"

iFile = FreeFile
Open App.Path & "\db\" & Sectiune_eu & "\db.2s" For Input As iFile
Do While Not EOF(iFile)
Line Input #iFile, sRecordLine
Inpartire (sRecordLine)
ccz = ccz + 1
Loop
Close iFile

End If '*************************************


If Index = 1 Then '*************************************

bula(1).Visible = False
bula(0).Visible = True
Sectiune.Caption = "Stocare date"

Sectiune_eu = "Stocare"
Fisiere_Sec.Path = App.Path & "\db\" & Sectiune_eu & "\"

iFile = FreeFile
Open App.Path & "\db\" & Sectiune_eu & "\db.2s" For Input As iFile
Do While Not EOF(iFile)
Line Input #iFile, sRecordLine
Inpartire (sRecordLine)
ccz = ccz + 1
Loop
Close iFile

End If '*************************************


If Index = 2 Then '*************************************

bula(1).Visible = False
bula(0).Visible = True
Sectiune.Caption = "Periferice"

Sectiune_eu = "Periferice"
Fisiere_Sec.Path = App.Path & "\db\" & Sectiune_eu & "\"

iFile = FreeFile
Open App.Path & "\db\" & Sectiune_eu & "\db.2s" For Input As iFile
Do While Not EOF(iFile)
Line Input #iFile, sRecordLine
Inpartire (sRecordLine)
ccz = ccz + 1
Loop
Close iFile

End If '********************************&

If Index = 3 Then '*************************************

bula(1).Visible = False
bula(0).Visible = True
Sectiune.Caption = "Sisteme"

Sectiune_eu = "Sisteme"
Fisiere_Sec.Path = App.Path & "\db\" & Sectiune_eu & "\"

iFile = FreeFile
Open App.Path & "\db\" & Sectiune_eu & "\db.2s" For Input As iFile
Do While Not EOF(iFile)
Line Input #iFile, sRecordLine
Inpartire (sRecordLine)
ccz = ccz + 1
Loop
Close iFile

End If '*************************************

If Index = 4 Then '*************************************

bula(1).Top = bula(0).Top
bula(1).Left = bula(0).Left
bula(1).Visible = True
bula(0).Visible = False
Sectiune.Caption = "Cautare avansata"
End If '*************************************


If Index = 5 Then '*************************************

bula(1).Visible = False
bula(0).Visible = True
Sectiune.Caption = "Software"

Sectiune_eu = "Software"
Fisiere_Sec.Path = App.Path & "\db\" & Sectiune_eu & "\"

iFile = FreeFile
Open App.Path & "\db\" & Sectiune_eu & "\db.2s" For Input As iFile
Do While Not EOF(iFile)
Line Input #iFile, sRecordLine
Inpartire (sRecordLine)
ccz = ccz + 1
Loop
Close iFile

End If '*************************************

If Index = 6 Then '*************************************

bula(1).Visible = False
bula(0).Visible = True
Sectiune.Caption = "Subansamble"

Sectiune_eu = "Subansamble"
Fisiere_Sec.Path = App.Path & "\db\" & Sectiune_eu & "\"

iFile = FreeFile
Open App.Path & "\db\" & Sectiune_eu & "\db.2s" For Input As iFile
Do While Not EOF(iFile)
Line Input #iFile, sRecordLine
Inpartire (sRecordLine)
ccz = ccz + 1
Loop
Close iFile

End If '*************************************


44:
End Sub

Private Sub Buton_negativ_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)

Buton_IG(Index).Visible = False

For i = 0 To 6

If Index = i Then
Buton_IG(i).Visible = True
Else
Buton_IG(i).Visible = False
End If
Next i


If Index = 0 Then
Mesagerie.Caption = "Retele && Telecomunicatii"
Mesagerie2.Caption = "Retele && Telecomunicatii"
End If

If Index = 1 Then
Mesagerie.Caption = "Stocare date"
Mesagerie2.Caption = "Stocare date"
End If

If Index = 2 Then
Mesagerie.Caption = "Periferice"
Mesagerie2.Caption = "Periferice"
End If

If Index = 3 Then
Mesagerie.Caption = "Sisteme"
Mesagerie2.Caption = "Sisteme"
End If

If Index = 4 Then
Mesagerie.Caption = "Cautare avansata"
Mesagerie2.Caption = "Cautare avansata"
End If

If Index = 5 Then
Mesagerie.Caption = "Software"
Mesagerie2.Caption = "Software"
End If

If Index = 6 Then
Mesagerie.Caption = "Subansamble"
Mesagerie2.Caption = "Subansamble"
End If
End Sub

Private Sub Form_Load()
On Error Resume Next

Dim strBuffer As String, lngNum As Long, X As Long

zy = Screen.TwipsPerPixelY
zx = Screen.TwipsPerPixelX

'DU_TE.Width = Screen.Width
'DU_TE.Height = Screen.Height - DU_TE.Top
If Screen.Width < Me.Width Then
I2.Visible = True
j2.Visible = True
End If

List3.BackColor = RGB(2, 77, 146)
List2.BackColor = RGB(2, 77, 146)
List1.BackColor = RGB(2, 77, 146)
Cautare.BackColor = RGB(2, 77, 146)

cc1.Visible = False
cc2.Visible = False

Lista_fisier.Path = App.Path & "\db\"

Sectiune_eu = "Retele"
'For X = 0 To Lista_fisier.ListCount - 1
'DoEvents
'List1.AddItem (Mid(Lista_fisier.List(FSR), 1, InStr(Lista_fisier.List(FSR), ".htm") - 1))
'Next

'Label1.Caption = "Au fost gasite:  " & List2.ListCount & " din " & List1.ListCount  'Display the amount of items found.


Dim iFile As Integer
Dim iFi As Integer

Dim sRecordLine As String
iFile = FreeFile

Open App.Path & "\serial.txt" For Input As iFile
Line Input #iFile, sRecordLine
If InStr(sRecordLine, "www." & Chr(110) & Chr(111) & Chr(118) & Chr(117) & Chr(115) & Chr(111) & Chr(114) & Chr(100) & Chr(111) & ".ro") = 0 Then
demoul.Show
Else
End If
Close iFile

On Error Resume Next

If FileExist("c:\Program Files\Adobe\Acrobat 6.0\Reader\ActiveX\pdf.ocx") = True Or FileExist("d:\Program Files\Adobe\Acrobat 6.0\Reader\ActiveX\pdf.ocx") = True _
Or FileExist("e:\Program Files\Adobe\Acrobat 6.0\Reader\ActiveX\pdf.ocx") = True Or FileExist("f:\Program Files\Adobe\Acrobat 6.0\Reader\ActiveX\pdf.ocx") = True _
Or FileExist("g:\Program Files\Adobe\Acrobat 6.0\Reader\ActiveX\pdf.ocx") = True Or FileExist("h:\Program Files\Adobe\Acrobat 6.0\Reader\ActiveX\pdf.ocx") = True _
Or FileExist("i:\Program Files\Adobe\Acrobat 6.0\Reader\ActiveX\pdf.ocx") = True _
Or FileExist("c:\Program Files\Adobe\Acrobat 6.0\Acrobat\ActiveX\pdf.ocx") = True Or FileExist("d:\Program Files\Adobe\Acrobat 6.0\Acrobat\ActiveX\pdf.ocx") = True _
Or FileExist("e:\Program Files\Adobe\Acrobat 6.0\Acrobat\ActiveX\pdf.ocx") = True Or FileExist("f:\Program Files\Adobe\Acrobat 6.0\Acrobat\ActiveX\pdf.ocx") = True _
Or FileExist("g:\Program Files\Adobe\Acrobat 6.0\Acrobat\ActiveX\pdf.ocx") = True Or FileExist("h:\Program Files\Adobe\Acrobat 6.0\Acrobat\ActiveX\pdf.ocx") = True _
Or FileExist("i:\Program Files\Adobe\Acrobat 6.0\Acrobat\ActiveX\pdf.ocx") = True Then

Else
Intro_A.Show
Me.Hide
End If


End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

Buton_IG(0).Visible = False
Buton_IG(1).Visible = False
Buton_IG(2).Visible = False
Buton_IG(3).Visible = False
Buton_IG(4).Visible = False
Buton_IG(5).Visible = False
Buton_IG(6).Visible = False

Mesagerie.Caption = "Info Guide 2005"
Mesagerie2.Caption = "Info Guide 2005"



If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If

End Sub

Private Sub I2_Click()
End
End Sub

Private Sub Iesire_Click()
End
End Sub

Private Sub Intro_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

Buton_IG(0).Visible = False
Buton_IG(1).Visible = False
Buton_IG(2).Visible = False
Buton_IG(3).Visible = False
Buton_IG(4).Visible = False
Buton_IG(5).Visible = False
Buton_IG(6).Visible = False

Mesagerie.Caption = "Info Guide 2005"
Mesagerie2.Caption = "Info Guide 2005"

If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If

End Sub

Private Sub j2_Click()
On Error Resume Next
Me.WindowState = 1
End Sub

Private Sub Jos_Click()
On Error Resume Next
Me.WindowState = 1
End Sub

'*****************************************************************************************

Private Sub Command1_Click()
On Error Resume Next

List2.Clear
'Gagniuc.Caption = "Caut ..."
Label1.Caption = " Va rugam sa asteptati, cautam ... "

Sunet (App.Path & "\z.wav")

If av2.Value = True Then
'Label1.Caption = "Caut ..."
numar_f = Lista_fisier.ListCount
DoEvents

For FSR = 0 To numar_f - 1
DoEvents


'rau = Mid(App.Path, Len(App.Path), 1)
'If rau = "\" Then
'DU_TE.Navigate App.Path & "bm.htm"
'Else
'DU_TE.Navigate App.Path & "\bm.htm"
'End If

Fis_este = App.Path & "\db\" & Lista_fisier.List(FSR)
'MsgBox Fis_este
'MsgBox Lista_fisier.List(FSR)

If ContainsText(Fis_este, Cautare) = True Then
List2.AddItem (Mid(LCase(Lista_fisier.List(FSR)), 1, InStr(LCase(Lista_fisier.List(FSR)), ".htm") - 1))
End If

Next FSR

Label1.Caption = " Au fost gasite " & List2.ListCount & " firme ofertante"

Else '**************************************************************************************************

'Call List_FindItem(List1, List2, Cautare.Text, False, True)
'GoTo DonE
'DonE:
'Label1.Caption = " Au fost gasite: " & List2.ListCount & " elemente"  'Display the amount of items found.
numar_f = Lista_fisier.ListCount

For FSRR = 0 To numar_f - 1
'MsgBox Lista_fisier.List(FSRR)

rezul = Mid(LCase(Lista_fisier.List(FSRR)), 1, InStr(LCase(Lista_fisier.List(FSRR)), ".htm") - 1)

If InStr(1, LCase(rezul), LCase(Cautare)) <> 0 Then
List2.AddItem (rezul)
End If

Next FSRR

Label1.Caption = " Au fost gasite " & List2.ListCount & " firme"
End If
'Gagniuc.Caption = "Cautare avansata"
'Label1.Caption = " Au fost gasite: " & List2.ListCount

End Sub

Private Function ContainsText(sFileName, sText) As Boolean
On Error Resume Next

Dim iFile As Integer
Dim sRecordLine As String
iFile = FreeFile
ContainsText = False
'split(sText," ",)

    Open sFileName For Input As iFile
        Do While Not EOF(iFile)
            Line Input #iFile, sRecordLine
                If CBool(InStr(1, LCase(sRecordLine), LCase(sText), vbTextCompare)) Then
                        ContainsText = True
                        Exit Do
                End If
                DoEvents
        Loop
    Close iFile


End Function


Private Sub Cautare_Click()
If Cautare.Text = "Aici se scrie cuvantul de interes ..." Then Cautare.Text = ""

End Sub

Private Sub Cautare_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Command1_Click
End If

End Sub

Private Sub List1_Click()
On Error GoTo 33


Arata_firma (List1.ListIndex)



'Dim iFile As Integer
'Dim sRecordLine As String
'iFile = FreeFile

'MsgBox App.Path & "\db\" & Sectiune_eu & "\" & List1.Text & ".htm"
'    Open App.Path & "\db\" & Sectiune_eu & "\" & List1.Text & ".htm" For Input As iFile
'        Do While Not EOF(iFile)
'            Line Input #iFile, sRecordLine
'            zulu = zulu & sRecordLine
'        Loop
'    Close iFile

   ' Distribuiri.Caption = zulu
   
Sunet (App.Path & "\y.wav")
33:
End Sub

Private Sub List2_Click()
On Error Resume Next
Arata_date.bum.Visible = True
Arata_date.bum.LoadFile (App.Path & "\db\" & List2.Text & ".pdf")
Arata_date.Gagniuc.Caption = "Info Guide 2005 - " & List2.Text
Arata_date.Caption = "[ " & List2.Text & " ]"
Arata_date.Show

Sunet (App.Path & "\y.wav")
'MsgBox App.Path & "\db\" & List2.Text
End Sub


Private Sub List3_Click()
On Error Resume Next
Arata_date.bum.Visible = True
Arata_date.bum.LoadFile (App.Path & "\db\" & List3.Text & ".pdf")
Arata_date.Gagniuc.Caption = "Info Guide 2005 - " & List3.Text
Arata_date.Caption = "[ " & List3.Text & " ]"
Arata_date.Show

Sunet (App.Path & "\y.wav")
End Sub

Private Sub Mesagerie2_Click()
webul.Visible = False
bula(1).Visible = False
bula(0).Visible = False
Intro.Visible = True
End Sub

Private Sub Mesagerie2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

Buton_IG(0).Visible = False
Buton_IG(1).Visible = False
Buton_IG(2).Visible = False
Buton_IG(3).Visible = False
Buton_IG(4).Visible = False

Mesagerie.Caption = "Info Guide 2005"
Mesagerie2.Caption = "Info Guide 2005"

If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Programare_Click()
DespreYO.Show
End Sub


Private Sub v1_Click()
webul.Visible = False
bula(1).Visible = False
bula(0).Visible = False
Intro.Visible = True
End Sub

Private Sub v1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

Buton_IG(0).Visible = False
Buton_IG(1).Visible = False
Buton_IG(2).Visible = False
Buton_IG(3).Visible = False
Buton_IG(4).Visible = False
Buton_IG(5).Visible = False
Buton_IG(6).Visible = False

Mesagerie.Caption = "Info Guide 2005"
Mesagerie2.Caption = "Info Guide 2005"

If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Function Inpartire(ByVal txt As String)
GigaTXT(ccz) = Mid(txt, InStr(txt, ":"), Len(txt))
List1.AddItem (Mid(txt, 1, InStr(txt, ":") - 1))
End Function

Private Function Arata_firma(ByVal distribuit As String)
List3.Clear

MasterProces = Mid(GigaTXT(distribuit), 4, Len(GigaTXT(distribuit)))

1:
Khazadum = InStr(MasterProces, "|")
Textmeniu = Mid(MasterProces, 1, Khazadum - 1)
MasterProces = Mid(MasterProces, InStr(MasterProces, "|") + 1, Len(MasterProces))

List3.AddItem (Textmeniu)


If MasterProces = "" Then GoTo 2

GoTo 1
2:
End Function

Private Sub webul_Click()
On Error Resume Next
Arata_date.bum.Visible = False
Arata_date.Bum2.Visible = True
'MsgBox App.Path & "\db\aferent\ajutor.htm"
Arata_date.Bum2.Navigate App.Path & "\db\aferent\internet.htm"
Arata_date.Gagniuc.Caption = "Companiile IT&&C pe INTERNET"
Arata_date.Caption = "[ Companiile IT&&C pe INTERNET ]"
Arata_date.Show

Sunet (App.Path & "\y.wav")
End Sub
