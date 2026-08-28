VERSION 5.00
Begin VB.Form Anunt_Cautare 
   BackColor       =   &H00400000&
   BorderStyle     =   0  'None
   Caption         =   "Cautare ..."
   ClientHeight    =   1695
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4935
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   113
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   329
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Shape bordura 
      BorderColor     =   &H00808080&
      Height          =   1695
      Left            =   0
      Top             =   0
      Width           =   4935
   End
   Begin VB.Image Image2 
      Height          =   720
      Left            =   360
      Picture         =   "Anunt_Cautare.frx":0000
      Top             =   600
      Width           =   720
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Caut in baza de date ..."
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
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   720
      Width           =   3615
   End
   Begin VB.Label Gagniuc 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Va rugam sa asteptati !"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4935
   End
   Begin VB.Image Image1 
      Height          =   255
      Left            =   0
      Picture         =   "Anunt_Cautare.frx":0ECA
      Stretch         =   -1  'True
      Top             =   15
      Width           =   4935
   End
End
Attribute VB_Name = "Anunt_Cautare"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
