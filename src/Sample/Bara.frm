VERSION 5.00
Begin VB.Form Colt_alb 
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   Caption         =   "Alege_Interfata"
   ClientHeight    =   1575
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2775
   LinkTopic       =   "Form1"
   ScaleHeight     =   1575
   ScaleWidth      =   2775
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin PC_World.Buton_3D_General Comanda_meniuri 
      Height          =   375
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2535
      _ExtentX        =   4471
      _ExtentY        =   661
      Caption         =   "Interfata de rezerva"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
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
      ForeColor       =   12632256
   End
   Begin PC_World.Buton_3D_General Comanda_meniuri 
      Height          =   375
      Index           =   6
      Left            =   120
      TabIndex        =   1
      Top             =   1050
      Width           =   2535
      _ExtentX        =   4471
      _ExtentY        =   661
      Caption         =   "Iesire"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
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
      ForeColor       =   12632256
   End
   Begin PC_World.Buton_3D_General Arhiva 
      Height          =   405
      Left            =   120
      TabIndex        =   2
      ToolTipText     =   "Ajutor"
      Top             =   555
      Width           =   2535
      _ExtentX        =   4471
      _ExtentY        =   714
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      XPColor_Pressed =   4194304
      XPColor_Hover   =   4194304
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   12632256
   End
   Begin VB.Image fundal 
      Height          =   1575
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   2775
   End
End
Attribute VB_Name = "Colt_alb"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Declare Function SHAppBarMessage Lib "shell32.dll" (ByVal dwMessage As Long, pData As APPBARDATA) As Long


Private Type RECT
    Left             As Long
    Top              As Long
    Right            As Long
    Bottom           As Long
End Type
'---
Private Type APPBARDATA
    cbSize           As Long
    hWnd             As Long
    uCallbackMessage As Long
    uEdge            As Long
    rc               As RECT
    lParam           As Long
End Type

Public Enum TASKBAR
    Jos
    dreapta
    stinga
    sus
End Enum

Private Const ABM_GETTASKBARPOS = &H5

Public Function Unde_esti(ByVal bara_J As TASKBAR) As Integer

Dim Ok As Long
Dim bara_mea As APPBARDATA

Ok = SHAppBarMessage(ABM_GETTASKBARPOS, bara_mea)

With bara_mea.rc
Select Case bara_J
Case Jos
Unde_esti = .Bottom
Case dreapta
Unde_esti = .Left
Case stinga
Unde_esti = .Right
Case sus
Unde_esti = .Top
End Select
End With

End Function

Private Sub Arhiva_Click()
On Error Resume Next
ShellExecute hWnd, "open", App.Path & "\arhiva.xls", vbNullString, vbNullString, conSwNormal
arata_colt = True
Me.Hide
End Sub

Private Sub Comanda_meniuri_Click(Index As Integer)
On Error Resume Next

If Index = 0 Then
ShellExecute hWnd, "open", App.Path & "\aferent\BackUp.htm", vbNullString, vbNullString, conSwNormal

'ShellExecute Instalare.hwnd, "open", "BackUp.htm", App.Path & "\aferent", "", 10
arata_colt = True
Me.Hide
End If

If Index = 6 Then
Shell_NotifyIcon NIM_DELETE, tq

Me.Hide
End
End If

End Sub

Private Sub Form_Load()
On Error Resume Next
fundal.Picture = Captura.Incarcare.Picture

sus_q = Unde_esti(sus)
stanga_q = Unde_esti(stinga)

zy = Screen.TwipsPerPixelY
zx = Screen.TwipsPerPixelX
Me.Top = ((sus_q) * zy) - Me.Height
Me.Left = ((stanga_q) * zx) - Me.Width
End Sub
