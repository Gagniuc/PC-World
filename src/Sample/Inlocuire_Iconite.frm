VERSION 5.00
Begin VB.Form Inlocuire_Iconite 
   BackColor       =   &H00404040&
   BorderStyle     =   0  'None
   Caption         =   "PCW_jos"
   ClientHeight    =   630
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3165
   Icon            =   "Inlocuire_Iconite.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   630
   ScaleWidth      =   3165
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer ChkEngine 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   2640
      Top             =   120
   End
   Begin VB.Timer Scroll 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   120
      Top             =   120
   End
   Begin VB.Label vText 
      BackColor       =   &H00400000&
      Caption         =   "Sistem activat !"
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
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   120
      Width           =   1875
   End
End
Attribute VB_Name = "Inlocuire_Iconite"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub ChkEngine_Timer()
Call CheckEngine
End Sub

Private Sub Form_Load()
'vText.ToolTipText = Time & " - " & Date
se_vede_colt_alb = False

ChkEngine.Enabled = True
End Sub

Private Sub Form_Paint()
    With vText
        .Width = Me.Width
        .Height = Me.Height
        .Top = 0
        .Left = 0
    End With
End Sub

Private Sub Form_Resize()
    With vText
        .Width = Me.Width
        .Height = Me.Height
        .Top = 0
        .Left = 0
    End With
End Sub

Private Sub Scroll_Timer()
strng$ = ScrollBuffer
DoEvents
    Buffer$ = Mid(strng, 1, 1)
    Buffer_2$ = Mid(strng, 2, Len(strng) - 1)
    ScrollBuffer = Buffer_2 & Buffer
    ddx = ScrollBuffer
    vText.Caption = Mid(ddx, 1, 50)
End Sub


Private Sub vText_Click()
'Instalare.WindowState = 0
End Sub

Private Sub vText_MouseUp(Button As Integer, Shift As Integer, X As Single, y As Single)

If Button = 1 Then

If Instalare.WindowState = 1 Then
Instalare.WindowState = 0
Else
Instalare.WindowState = 1
End If

Else

If se_vede_colt_alb = False Then
se_vede_colt_alb = True
sus_q = Unde_esti(sus)
stanga_q = Unde_esti(stinga)
zy = Screen.TwipsPerPixelY
zx = Screen.TwipsPerPixelX
Colt_alb.Top = ((sus_q) * zy) - Colt_alb.Height
Colt_alb.Left = ((stanga_q) * zx) - Colt_alb.Width
Colt_alb.Show
Else
se_vede_colt_alb = False
Colt_alb.Hide
End If

End If

MegaHz (App.Path & "\aferent\Negativ\sonar.wav")

End Sub
