VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Object = "{CA8A9783-280D-11CF-A24D-444553540000}#1.3#0"; "pdf.ocx"
Begin VB.Form Arata_date 
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   Caption         =   "Date ..."
   ClientHeight    =   8055
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10935
   Icon            =   "Arata_date.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   537
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   729
   StartUpPosition =   2  'CenterScreen
   Begin PdfLib.Pdf bum 
      Height          =   7575
      Left            =   120
      TabIndex        =   4
      Top             =   360
      Width           =   10695
      _Version        =   327680
      _ExtentX        =   18865
      _ExtentY        =   13361
      _StockProps     =   0
      SRC             =   ""
   End
   Begin SHDocVwCtl.WebBrowser Bum2 
      Height          =   7575
      Left            =   120
      TabIndex        =   5
      Top             =   360
      Width           =   10695
      ExtentX         =   18865
      ExtentY         =   13361
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin Project1.Buton_3D_General Iesire 
      Height          =   255
      Left            =   10440
      TabIndex        =   1
      Top             =   75
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
      ShowFocusRect   =   0   'False
      XPColor_Pressed =   16777215
      XPColor_Hover   =   16777215
      XPDefaultColors =   0   'False
      ForeColor       =   0
   End
   Begin Project1.Buton_3D_General Jos 
      Height          =   255
      Left            =   9720
      TabIndex        =   2
      Top             =   75
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
      ShowFocusRect   =   0   'False
      XPColor_Pressed =   16777215
      XPColor_Hover   =   16777215
      XPDefaultColors =   0   'False
      ForeColor       =   0
   End
   Begin Project1.Buton_3D_General mare 
      Height          =   255
      Left            =   10080
      TabIndex        =   3
      Top             =   75
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   450
      Caption         =   "O"
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
      ShowFocusRect   =   0   'False
      XPColor_Pressed =   16777215
      XPColor_Hover   =   16777215
      XPDefaultColors =   0   'False
      ForeColor       =   0
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   728
      Y1              =   16
      Y2              =   16
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFFFF&
      Height          =   8055
      Left            =   0
      Top             =   0
      Width           =   10935
   End
   Begin VB.Label Gagniuc 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Firma ..."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400000&
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10935
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   0
      Picture         =   "Arata_date.frx":0ECA
      Stretch         =   -1  'True
      Top             =   0
      Width           =   10935
   End
End
Attribute VB_Name = "Arata_date"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Private Sub Form_Load()
Gagniuc.Width = Me.ScaleWidth
Image1.Width = Gagniuc.Width
End Sub

Private Sub Gagniuc_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Iesire_Click()
bum.Visible = False
Me.Hide
End Sub

Private Sub Jos_Click()
On Error Resume Next
Me.WindowState = 1
End Sub

Private Sub mare_Click()

If Me.WindowState = 0 Then
Me.WindowState = 2
Gagniuc.Width = Me.ScaleWidth
Image1.Width = Gagniuc.Width
bum.Width = Gagniuc.Width - 15
bum.Height = Me.ScaleHeight - Gagniuc.Height - 20
Bum2.Width = Gagniuc.Width - 15
Bum2.Height = Me.ScaleHeight - Gagniuc.Height - 20
Shape1.Width = Me.ScaleWidth
Shape1.Height = Me.ScaleHeight
Line1.x2 = Me.ScaleWidth

Iesire.Left = Me.ScaleWidth - Iesire.Width - 10
mare.Left = ((Me.ScaleWidth - mare.Width) - Iesire.Width) - 15
Jos.Left = (((Me.ScaleWidth - mare.Width) - Iesire.Width) - Jos.Width) - 20
Else
Me.WindowState = 0
Gagniuc.Width = Me.ScaleWidth
Image1.Width = Gagniuc.Width
bum.Width = Gagniuc.Width - 15
bum.Height = Me.ScaleHeight - Gagniuc.Height - 20
Bum2.Width = Gagniuc.Width - 15
Bum2.Height = Me.ScaleHeight - Gagniuc.Height - 20
Shape1.Width = Me.ScaleWidth
Shape1.Height = Me.ScaleHeight
Line1.x2 = Me.ScaleWidth
Iesire.Left = Me.ScaleWidth - Iesire.Width - 10
mare.Left = ((Me.ScaleWidth - mare.Width) - Iesire.Width) - 15
Jos.Left = (((Me.ScaleWidth - mare.Width) - Iesire.Width) - Jos.Width) - 20
End If
End Sub
