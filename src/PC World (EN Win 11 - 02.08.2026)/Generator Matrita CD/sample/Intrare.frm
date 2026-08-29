VERSION 5.00
Begin VB.Form Intrare 
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   Caption         =   "Intrare_Verificare_Integritate_CD"
   ClientHeight    =   6165
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9045
   Icon            =   "Intrare.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Intrare.frx":2982
   ScaleHeight     =   411
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   603
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Anti_clipire 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H80000008&
      Height          =   3015
      Left            =   360
      ScaleHeight     =   2985
      ScaleWidth      =   5265
      TabIndex        =   5
      Top             =   840
      Width           =   5295
      Begin VB.Label Consola 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Lucida Console"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   3015
         Left            =   120
         TabIndex        =   6
         Top             =   0
         Width           =   5055
      End
   End
   Begin VB.PictureBox Bara_indigo 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   960
      Picture         =   "Intrare.frx":12BCC
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   4
      Top             =   4320
      Visible         =   0   'False
      Width           =   3855
   End
   Begin VB.PictureBox Bara_Incarcare 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   960
      Picture         =   "Intrare.frx":13B3B
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   3
      Top             =   5400
      Width           =   3855
   End
   Begin VB.Timer Lupta_finala 
      Interval        =   30
      Left            =   8400
      Top             =   240
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   360
      Picture         =   "Intrare.frx":14AB2
      Top             =   240
      Width           =   480
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00808080&
      Height          =   3045
      Left            =   345
      Top             =   825
      Width           =   5325
   End
   Begin VB.Label Mesagerie 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Verificarea integritatii programului"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   5040
      Width           =   5895
   End
   Begin VB.Label Text_paul1 
      BackStyle       =   0  'Transparent
      Caption         =   "PC World  - Martie 2005"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   1050
      TabIndex        =   1
      Top             =   360
      Width           =   4935
   End
   Begin VB.Label Text_paul2 
      BackStyle       =   0  'Transparent
      Caption         =   "PC World  - Martie 2005"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   495
      Left            =   1080
      TabIndex        =   0
      Top             =   330
      Width           =   4815
   End
End
Attribute VB_Name = "Intrare"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ro As Variant

Private Sub Form_Load()
On Error Resume Next
'*******************************************************************************
Text_Lunar = "PC World - August 2005"

Text_paul1.Caption = Text_Lunar
Text_paul2.Caption = Text_Lunar
'*******************************************************************************


On Error GoTo 666

Spatial$ = Space(260)
CaleWin& = GetWindowsDirectory(Spatial$, 260)
WinCx = Left(Spatial$, CaleWin&)

If (FileExist(WinCx & "\Fonts\B074000D.TTF") = False) Then
FileCopy App.Path & "\B074000D.TTF", WinCx & "\Fonts\B074000D.TTF"
End If

If (FileExist(WinCx & "\Fonts\G034000D.TTF") = False) Then
FileCopy App.Path & "\G034000D.TTF", WinCx & "\Fonts\G034000D.TTF"
End If

666:

'*******************************************************************************

On Error Resume Next

ff = FreeFile
Open "c:\PC_World\control.evolutie" For Output As #ff
Print #ff, "0"
Close #ff

Instalare.Hide
DoEvents

Instalare.SunetHTM.Offline = True
Instalare.Text_Imagine.Offline = True
Instalare.Voce.Offline = True

Bara_Incarcare.Cls
Call BitBlt(Bara_Incarcare.hDC, 0, 0, 2, 25, Bara_indigo.hDC, 0, 0, vbSrcCopy)


On Error Resume Next

Instalare.Text_Imagine.Navigate (App.Path & "\aferent\Intrare.htm")
Instalare.SunetHTM.Navigate (App.Path & "\aferent\Negativ\S1.htm")
Instalare.Voce.Navigate (App.Path & "\aferent\Negativ\nimic.htm")
DoEvents
Me.Show

End Sub

Private Sub Lupta_finala_Timer()
On Error Resume Next

If ro = "10" Then
Mesagerie.Caption = " Incarcare ..."
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
End If

If ro = "20" Then
Mesagerie.Caption = " Decriptare informatii aplicatie ..."
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
End If

If ro = "30" Then
If (FileExist(WinCx & "\Fonts\B074000D.TTF") = False And FileExist(WinCx & "\Fonts\G034000D.TTF") = False) Then
Mesagerie.Caption = " Font-urile NU exista in sistem. Instalez..."
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
Else
Mesagerie.Caption = " Font-urile exista in sistem."
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
End If
End If

If ro = "35" Then
Mesagerie.Caption = " Integritatea directoarelor"
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
End If

If ro = "40" Then
Mesagerie.Caption = " Citire biohazard.zulu"
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
End If

If ro = "50" Then
Mesagerie.Caption = " Initializarea motorului de grafica"
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
Mesagerie_q.Show
End If

If ro = "60" Then
Mesagerie.Caption = " Fisierele de prezentare"
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
End If

If ro = "75" Then
Mesagerie.Caption = " Fisierele imagine ..."
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
End If
If ro = "86" Then
Mesagerie.Caption = " Programul este operational"
Consola.Caption = Consola.Caption & vbCrLf & Mesagerie.Caption
End If

ro = ro + 1

Bara_Incarcare.Cls
Call BitBlt(Bara_Incarcare.hDC, 0, 0, (Bara_Incarcare.ScaleWidth / 100) * Int(ro), 25, Bara_indigo.hDC, 0, 0, vbSrcCopy)

If ro > 100 Then
Lupta_finala.Enabled = False
Me.Hide
Instalare.Show

Mesagerie_q.secunda.Enabled = True ' altfel se blocheaza systry-ul


End If

End Sub

Public Function FileExist(aFile As String) As Boolean
On Error GoTo 23

If aFile = "" Then
FileExist = False
Exit Function
End If

If Dir$(aFile) = "" Then
If Dir$(aFile, vbHidden) = "" Then
FileExist = False
Else
FileExist = True
End If
Else
FileExist = True
End If
Exit Function
23:
FileExist = False
'KillPC
End Function
