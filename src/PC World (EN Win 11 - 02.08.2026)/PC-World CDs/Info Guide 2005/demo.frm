VERSION 5.00
Begin VB.Form demoul 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Demo"
   ClientHeight    =   1095
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7815
   Icon            =   "demo.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1095
   ScaleWidth      =   7815
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer dem 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   120
      Top             =   1920
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Cand in fisierul Serial.txt de pe CD este scris codul de activare a programului, acest mesaj dispare."
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   3600
      TabIndex        =   1
      Top             =   360
      Width           =   4095
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFFFF&
      Height          =   1095
      Left            =   0
      Top             =   0
      Width           =   7815
   End
   Begin VB.Label arata 
      BackStyle       =   0  'Transparent
      Caption         =   "Demo !"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1095
      Left            =   360
      TabIndex        =   0
      Top             =   0
      Width           =   3135
   End
End
Attribute VB_Name = "demoul"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim xzulu As Boolean

Private Sub dem_Timer()
If xzulu = True Then
xzulu = False
arata.Visible = True
Else
xzulu = True
arata.Visible = False
End If
End Sub

Private Sub Form_Load()
Me.Left = 0
Me.Top = 0
dem.Enabled = True
End Sub
