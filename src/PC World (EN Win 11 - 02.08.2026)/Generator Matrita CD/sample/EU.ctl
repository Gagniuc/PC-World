VERSION 5.00
Begin VB.UserControl vLED 
   ClientHeight    =   1365
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   315
   ScaleHeight     =   1365
   ScaleWidth      =   315
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H000000C0&
      Height          =   135
      Index           =   10
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   10
      Top             =   0
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H000000C0&
      Height          =   135
      Index           =   9
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   9
      Top             =   120
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C0C0&
      Height          =   135
      Index           =   8
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   8
      Top             =   240
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C0C0&
      Height          =   135
      Index           =   7
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   7
      Top             =   360
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C0C0&
      Height          =   135
      Index           =   6
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   6
      Top             =   480
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C000&
      Height          =   135
      Index           =   5
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   5
      Top             =   600
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C000&
      Height          =   135
      Index           =   4
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   4
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C000&
      Height          =   135
      Index           =   3
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   3
      Top             =   840
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C000&
      Height          =   135
      Index           =   2
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   2
      Top             =   960
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C000&
      Height          =   135
      Index           =   1
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   1
      Top             =   1080
      Width           =   255
   End
   Begin VB.PictureBox LEDPB 
      AutoRedraw      =   -1  'True
      BackColor       =   &H0000C000&
      Height          =   135
      Index           =   0
      Left            =   0
      ScaleHeight     =   75
      ScaleWidth      =   195
      TabIndex        =   0
      Top             =   1200
      Width           =   255
   End
End
Attribute VB_Name = "vLED"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'&H0000C000& dkgr
'&H0000FF00& ltgr
'&H0000C0C0& dkyw
'&H0000FFFF& ltyw
'&H000000C0& dkrd
'&H000000FF& ltrd
Dim P_Val As Integer
Property Get Value() As Integer
Value = P_Val
End Property
Property Let Value(NewVal As Integer)
P_Val = NewVal
For I = 0 To 10
If I <= P_Val Then
If I < 6 Then LEDPB(I).BackColor = &HFF00&
If I > 5 And I < 9 Then LEDPB(I).BackColor = &HFFFF&
If I > 8 Then LEDPB(I).BackColor = &HFF
Else
If I < 6 Then LEDPB(I).BackColor = &HC000&
If I > 5 And I < 9 Then LEDPB(I).BackColor = &HC0C0&
If I > 8 Then LEDPB(I).BackColor = &HC0
End If
Next
PropertyChanged "Value"
End Property
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
P_Val = PropBag.ReadProperty("Value", 0)
End Sub

Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
Call PropBag.WriteProperty("Value", P_Val, 0)
End Sub
