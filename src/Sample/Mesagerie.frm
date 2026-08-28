VERSION 5.00
Begin VB.Form Mesagerie_q 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   1335
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9330
   LinkTopic       =   "Form1"
   ScaleHeight     =   89
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   622
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Cadran_afisare 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   915
      Left            =   120
      ScaleHeight     =   57
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   599
      TabIndex        =   5
      Top             =   240
      Width           =   9045
   End
   Begin VB.PictureBox zulu_temporar 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   600
      ScaleHeight     =   16
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   30
      TabIndex        =   4
      Top             =   1920
      Visible         =   0   'False
      Width           =   450
   End
   Begin VB.Timer secunda 
      Enabled         =   0   'False
      Interval        =   110
      Left            =   120
      Top             =   1920
   End
   Begin VB.TextBox afiseaza 
      BackColor       =   &H00808080&
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   120
      TabIndex        =   3
      Text            =   "PC World februarie 2005 - > "
      Top             =   1440
      Visible         =   0   'False
      Width           =   8025
   End
   Begin VB.PictureBox Lungime_txt 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   600
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   25
      TabIndex        =   2
      Top             =   2160
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.PictureBox fundal_pix 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1200
      Picture         =   "Mesagerie.frx":0000
      ScaleHeight     =   17
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   17
      TabIndex        =   1
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.PictureBox Pe_fundal 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1560
      Picture         =   "Mesagerie.frx":0066
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   0
      Top             =   1920
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Image fundal 
      Height          =   1335
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   9375
   End
End
Attribute VB_Name = "Mesagerie_q"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Dim xBegin As Integer, ShouldRedraw As Integer, dxText As Long, dxPerViewWindow As Long
Dim pstep As Integer, qstep As Integer
Dim xbStep As Integer
Dim RightDirection As Integer

Private Sub Cadran_afisare_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Form_Load()
On Error Resume Next
fundal.Picture = Captura.Incarcare.Picture

Lungime_txt.Font.Name = "System"
Lungime_txt.Font.Size = 11
Lungime_txt.Font.Bold = False


'Dim Buffer As String
'Buffer = Space(255)
'CompName$ = GetComputerName(Buffer, Len(Buffer))
'If ret& > 0 Then CompName$ = Left(Buffer, ret&)
'afiseaza.Text = Buffer

afiseaza.Text = Text_Lunar & " -> "

an_iesire = 2005
luna_iesire = 8
zi_iesire = 12


luna_curenta = Month(Date)
zi_curenta = Day(Date)


If luna_curenta >= luna_iesire Then
luna = luna_curenta - luna_iesire



zi = zi_curenta - zi_iesire
anul_are = Year(Date)


If an_iesire <> anul_are Then
Else
If luna = 0 Then
afiseaza.Text = afiseaza.Text & " Conform datei calculatorului dumneavoastra aveti cel mai nou numar al revistei."
Else
If luna = 1 Then
afiseaza.Text = afiseaza.Text & " De la data aparitiei revistei de fata, a aparut un numar nou al revistei PC World."
Else
afiseaza.Text = afiseaza.Text & " De la data aparitiei revistei de fata, au aparut " & luna & " numere noi ale revistei PC World."
End If
End If

End If
End If
GetSysInfo

Me.Left = 0
Me.Top = 0

Pe_fundal.AutoSize = True
fundal_pix.AutoSize = True
Call ResetParams
xb1 = xBegin
DrawNeon
xBegin = xb1
End Sub

Sub ResetParams()
On Error Resume Next

RightDirection = 0 'OptionDir(1).Value = True
Pe_fundal.AutoSize = True
fundal_pix.AutoSize = True

dxText = Lungime_txt.TextWidth(afiseaza.Text)

Lungime_txt.Width = dxText + 4
Lungime_txt.Height = Lungime_txt.TextHeight(afiseaza.Text) + 4
afiseaza.Height = Lungime_txt.Height

Lungime_txt.Cls
Lungime_txt.Print afiseaza.Text

xbStep = Val(3) 'step

pstep = fundal_pix.Width
qstep = fundal_pix.Height

Cadran_afisare.Width = Val(600) + 4
Cadran_afisare.Height = Val(55) + 4

'Cadran_afisare.Width = afiseaza.Width * pstep + 4
'Cadran_afisare.Height = Lungime_txt.Height * qstep + 4
dxPerViewWindow = Cadran_afisare.ScaleWidth / pstep
zulu_temporar.Width = Cadran_afisare.Width
zulu_temporar.Height = Cadran_afisare.Height

xBegin = IIf(RightDirection, dxText, -dxPerViewWindow)
ShouldRedraw = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
secunda.Enabled = False
Cadran_afisare = Empty
zulu_temporar = Empty
Lungime_txt = Empty
End Sub

Private Sub fundal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Cadran_afisare_Click()
On Error Resume Next

If secunda.Enabled = True Then
secunda.Enabled = False
Else
secunda.Enabled = True
End If

End Sub

Private Sub afiseaza_Change()
On Error Resume Next
ResetParams
End Sub

Private Sub secunda_Timer()
On Error Resume Next
DrawNeon
End Sub

Sub DrawNeon()
On Error Resume Next

Static LastxBegin As Long
Dim Col1 As Long, Col2 As Long, Col As Long, hDC As Long
Dim xx As Long, yy As Long
Dim X As Integer, Y As Integer, dx As Long, dy As Long
Dim xxMax As Long, yyMax As Long, xAdd As Integer

Dim imgON, imgOff 'As IPictureDisp
Set imgON = Pe_fundal.Image
Set imgOff = fundal_pix.Image

Col1 = Lungime_txt.BackColor
Col2 = Lungime_txt.ForeColor
xxMax = Cadran_afisare.ScaleWidth
yyMax = Cadran_afisare.ScaleHeight

dx = 2000: dy = 2000

xx = 0
xa = xBegin
xb = xBegin + dxPerViewWindow

xAdd = Abs(xBegin - LastxBegin)

If ShouldRedraw Or xAdd >= dxPerViewWindow Then
 Cadran_afisare.Cls: zulu_temporar.Cls
 ShouldRedraw = False
Else

 wi = dxPerViewWindow - xAdd
 
 w = wi * pstep
 h = yyMax
 
 Select Case xBegin - LastxBegin
 Case Is > 0
    If w <> 0 And h <> 0 Then
     zulu_temporar.PaintPicture Cadran_afisare.Image, 0, 0, w, h, xAdd * pstep, 0, w, h
     Cadran_afisare.PaintPicture zulu_temporar.Image, 0, 0, w, h, 0, 0, w, h
    End If
    xa = xa + wi: xx = xx + w
 Case 0
    xa = xBegin + dxPerViewWindow + 1 'for don't draw anything in for-next
 Case Is < 0
    If w <> 0 And h <> 0 Then
     zulu_temporar.PaintPicture Cadran_afisare.Image, 0, 0, w, h, 0, 0, w, h
     Cadran_afisare.PaintPicture zulu_temporar.Image, xAdd * pstep, 0, w, h, 0, 0, w, h
    End If
    xb = xb - wi
 End Select
End If

yb = 0

For X = xa To xb
yy = 0
For Y = yb To yb + dy

  If X < 0 Or X >= Lungime_txt.ScaleWidth Or _
   Y < 0 Or Y >= Lungime_txt.ScaleHeight Then

    Col = Col1

    Else
        Col = Lungime_txt.Point(X, Y)
    End If

  If Col <> Col1 Then
   Cadran_afisare.PaintPicture imgON, xx, yy
  Else
   Cadran_afisare.PaintPicture imgOff, xx, yy
End If
  yy = yy + qstep: If yy > yyMax Then Exit For
Next
'DoEvents
xx = xx + pstep: If xx > xxMax Then Exit For
Next

LastxBegin = xBegin

If RightDirection Then
  If xBegin <= -dxPerViewWindow Then
   xBegin = dxText
  Else
   xBegin = xBegin - xbStep
  End If
Else 'LeftDirection:
  If xBegin >= dxText Then
   xBegin = -dxPerViewWindow
  Else
   xBegin = xBegin + xbStep
  End If
End If
End Sub

