VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form Instalare 
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   Caption         =   "PC World"
   ClientHeight    =   8280
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11310
   Icon            =   "CD.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "CD.frx":038A
   ScaleHeight     =   552
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   754
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer TimpSys 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   4560
      Top             =   10800
   End
   Begin VB.PictureBox PicturaSys 
      Height          =   360
      Index           =   4
      Left            =   2280
      Picture         =   "CD.frx":1FFA9
      ScaleHeight     =   300
      ScaleWidth      =   315
      TabIndex        =   78
      Top             =   10800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox PicturaSys 
      Height          =   360
      Index           =   3
      Left            =   1800
      Picture         =   "CD.frx":20333
      ScaleHeight     =   300
      ScaleWidth      =   315
      TabIndex        =   77
      Top             =   10800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox PicturaSys 
      Height          =   375
      Index           =   2
      Left            =   1320
      Picture         =   "CD.frx":206BD
      ScaleHeight     =   315
      ScaleWidth      =   315
      TabIndex        =   76
      Top             =   10800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox PicturaSys 
      Height          =   375
      Index           =   1
      Left            =   840
      Picture         =   "CD.frx":20A47
      ScaleHeight     =   315
      ScaleWidth      =   315
      TabIndex        =   75
      Top             =   10800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox PicturaSys 
      Height          =   360
      Index           =   0
      Left            =   360
      Picture         =   "CD.frx":20DD1
      ScaleHeight     =   300
      ScaleWidth      =   315
      TabIndex        =   74
      Top             =   10815
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox Bara_acopera 
      BackColor       =   &H00808080&
      Height          =   15
      Index           =   5
      Left            =   7440
      ScaleHeight     =   15
      ScaleWidth      =   1455
      TabIndex        =   68
      Top             =   9480
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.PictureBox Bara_acopera 
      BackColor       =   &H00808080&
      Height          =   15
      Index           =   4
      Left            =   7440
      ScaleHeight     =   15
      ScaleWidth      =   1455
      TabIndex        =   67
      Top             =   9600
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.PictureBox Bara_indigo 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   5040
      Picture         =   "CD.frx":2115B
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   66
      Top             =   9000
      Visible         =   0   'False
      Width           =   3855
   End
   Begin VB.PictureBox Bara_acopera 
      BackColor       =   &H00808080&
      Height          =   15
      Index           =   3
      Left            =   7440
      ScaleHeight     =   15
      ScaleWidth      =   1455
      TabIndex        =   65
      Top             =   9720
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.PictureBox Bara_acopera 
      BackColor       =   &H00808080&
      Height          =   855
      Index           =   2
      Left            =   5400
      ScaleHeight     =   855
      ScaleWidth      =   15
      TabIndex        =   64
      Top             =   9480
      Visible         =   0   'False
      Width           =   15
   End
   Begin VB.PictureBox Bara_acopera 
      BackColor       =   &H00808080&
      Height          =   855
      Index           =   1
      Left            =   5280
      ScaleHeight     =   855
      ScaleWidth      =   15
      TabIndex        =   63
      Top             =   9480
      Visible         =   0   'False
      Width           =   15
   End
   Begin VB.PictureBox Bara_acopera 
      BackColor       =   &H00808080&
      Height          =   855
      Index           =   0
      Left            =   5160
      ScaleHeight     =   855
      ScaleWidth      =   15
      TabIndex        =   62
      Top             =   9480
      Visible         =   0   'False
      Width           =   15
   End
   Begin VB.Frame InternetFAZA1 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   120
      TabIndex        =   56
      Top             =   720
      Visible         =   0   'False
      Width           =   10935
      Begin VB.TextBox Linkul 
         Appearance      =   0  'Flat
         BackColor       =   &H00400000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   3240
         TabIndex        =   57
         Text            =   "http://www.pcworld.ro"
         Top             =   0
         Width           =   6975
      End
      Begin PC_World.Buton_3D_General Incarca 
         Height          =   300
         Left            =   10320
         TabIndex        =   58
         Top             =   0
         Width           =   615
         _ExtentX        =   1085
         _ExtentY        =   529
         Caption         =   "Ok"
         ButtonStyle     =   3
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
         SoundOver       =   ".\aferent\Negativ\Buton.wav"
      End
      Begin PC_World.Buton_3D_General Inapoi 
         Height          =   300
         Left            =   0
         TabIndex        =   59
         Top             =   0
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   529
         Caption         =   "<- Inapoi"
         ButtonStyle     =   3
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
         SoundOver       =   ".\aferent\Negativ\Buton.wav"
      End
      Begin PC_World.Buton_3D_General Inainte 
         Height          =   300
         Left            =   1080
         TabIndex        =   60
         Top             =   0
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   529
         Caption         =   "Inainte ->"
         ButtonStyle     =   3
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
         SoundOver       =   ".\aferent\Negativ\Buton.wav"
      End
      Begin PC_World.Buton_3D_General Stop 
         Height          =   300
         Left            =   2160
         TabIndex        =   61
         Top             =   0
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   529
         ButtonStyle     =   3
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
         SoundOver       =   ".\aferent\Negativ\Buton.wav"
      End
      Begin VB.Image Image1 
         Height          =   420
         Left            =   0
         Picture         =   "CD.frx":220CA
         Top             =   0
         Width           =   10995
      End
   End
   Begin VB.Timer Sunet_Clip 
      Interval        =   500
      Left            =   1080
      Top             =   9000
   End
   Begin VB.Frame Acopera 
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Acopera"
      ForeColor       =   &H80000008&
      Height          =   1725
      Left            =   5400
      TabIndex        =   51
      Top             =   9840
      Width           =   5655
      Begin PC_World.Buton_3D_General ScanNet11 
         Height          =   420
         Left            =   360
         TabIndex        =   79
         Top             =   480
         Visible         =   0   'False
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   741
         Caption         =   "Scanare IP"
         ButtonStyle     =   3
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
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
         SoundOver       =   ".\aferent\Negativ\Buton.wav"
      End
      Begin PC_World.Buton_3D_General ScanNet22 
         Height          =   420
         Left            =   1080
         TabIndex        =   80
         Top             =   1080
         Visible         =   0   'False
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   741
         Caption         =   "Scanare porturi"
         ButtonStyle     =   3
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
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
         SoundOver       =   ".\aferent\Negativ\Buton.wav"
      End
      Begin PC_World.Buton_3D_General ScanNet33 
         Height          =   420
         Left            =   3480
         TabIndex        =   81
         Top             =   1080
         Visible         =   0   'False
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   741
         Caption         =   "Server Web"
         ButtonStyle     =   3
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
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
         SoundOver       =   ".\aferent\Negativ\Buton.wav"
      End
      Begin PC_World.Buton_3D_General ScanNet44 
         Height          =   420
         Left            =   2760
         TabIndex        =   82
         Top             =   480
         Visible         =   0   'False
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   741
         Caption         =   "Viteza de raspuns"
         ButtonStyle     =   3
         OriginalPicSizeW=   0
         OriginalPicSizeH=   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
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
         SoundOver       =   ".\aferent\Negativ\Buton.wav"
      End
      Begin VB.Image Combustie 
         Height          =   1665
         Left            =   720
         Picture         =   "CD.frx":237FC
         ToolTipText     =   "PC World - Wallpaper"
         Top             =   45
         Width           =   4455
      End
      Begin VB.Image Image3 
         Height          =   1755
         Left            =   -120
         Picture         =   "CD.frx":253F5
         Top             =   0
         Width           =   5820
      End
   End
   Begin VB.Frame MeniuTotal 
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      Caption         =   "Meniu"
      Height          =   4935
      Left            =   11400
      TabIndex        =   31
      Top             =   1200
      Visible         =   0   'False
      Width           =   2775
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   32
         Top             =   240
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   33
         Top             =   720
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   34
         Top             =   480
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   35
         Top             =   960
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   36
         Top             =   1200
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   37
         Top             =   1440
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   38
         Top             =   1680
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   39
         Top             =   1920
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   40
         Top             =   2160
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   41
         Top             =   2400
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   42
         Top             =   2640
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   11
         Left            =   120
         TabIndex        =   43
         Top             =   2880
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   12
         Left            =   120
         TabIndex        =   44
         Top             =   3120
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   13
         Left            =   120
         TabIndex        =   45
         Top             =   3360
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   14
         Left            =   120
         TabIndex        =   46
         Top             =   3600
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   15
         Left            =   120
         TabIndex        =   47
         Top             =   3840
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   16
         Left            =   120
         TabIndex        =   48
         Top             =   4080
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   17
         Left            =   120
         TabIndex        =   49
         Top             =   4320
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin PC_World.Buton_3D_General Meniu_Programe 
         Height          =   255
         Index           =   18
         Left            =   120
         TabIndex        =   50
         Top             =   4560
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   450
         Caption         =   "Gol"
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
         XPColor_Hover   =   12632256
         XPDefaultColors =   0   'False
         BackColor       =   8421504
         ForeColor       =   16777215
      End
      Begin VB.Image Metal 
         Height          =   4935
         Left            =   0
         Picture         =   "CD.frx":295F6
         Stretch         =   -1  'True
         Top             =   0
         Width           =   2775
      End
   End
   Begin SHDocVwCtl.WebBrowser SunetHTM 
      Height          =   975
      Left            =   2040
      TabIndex        =   17
      Top             =   9000
      Width           =   1335
      ExtentX         =   2355
      ExtentY         =   1720
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
   Begin VB.Timer Arata_La_suta 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   600
      Top             =   9000
   End
   Begin VB.PictureBox Bara_copiere 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00004040&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   6360
      Picture         =   "CD.frx":2D495
      ScaleHeight     =   23
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   255
      TabIndex        =   14
      Top             =   7560
      Visible         =   0   'False
      Width           =   3855
   End
   Begin VB.Timer Sunet 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   120
      Top             =   9000
   End
   Begin PC_World.Buton_3D_General IntroEU 
      Height          =   285
      Left            =   6120
      TabIndex        =   0
      ToolTipText     =   "Micsorare"
      Top             =   120
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   503
      Caption         =   "Intro"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
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
   Begin PC_World.Buton_3D_General Internet 
      Height          =   375
      Left            =   4560
      TabIndex        =   1
      ToolTipText     =   "Internet"
      Top             =   720
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
   Begin PC_World.Buton_3D_General Multimedia 
      Height          =   375
      Left            =   1920
      TabIndex        =   2
      ToolTipText     =   "Multimedia"
      Top             =   720
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
   Begin PC_World.Buton_3D_General Utilitare 
      Height          =   375
      Left            =   600
      TabIndex        =   3
      ToolTipText     =   "Utilitare"
      Top             =   720
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
   Begin PC_World.Buton_3D_General Micro 
      Height          =   255
      Left            =   9840
      TabIndex        =   4
      Top             =   120
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
      XPColor_Pressed =   4194304
      XPColor_Hover   =   14654290
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   16777215
   End
   Begin PC_World.Buton_3D_General X_Iesire 
      Height          =   255
      Left            =   10200
      TabIndex        =   5
      Top             =   120
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
      XPColor_Pressed =   4194304
      XPColor_Hover   =   14654290
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   16777215
   End
   Begin PC_World.Buton_3D_General Despre 
      Height          =   375
      Left            =   9960
      TabIndex        =   6
      ToolTipText     =   "Despre"
      Top             =   720
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   661
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
   Begin PC_World.Buton_3D_General Antivirus 
      Height          =   375
      Left            =   5880
      TabIndex        =   7
      ToolTipText     =   "Antivirus"
      Top             =   720
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
   Begin PC_World.Buton_3D_General Revista 
      Height          =   375
      Left            =   8640
      TabIndex        =   8
      ToolTipText     =   "Revista"
      Top             =   720
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
   Begin PC_World.Buton_3D_General Permanente 
      Height          =   375
      Left            =   7200
      TabIndex        =   9
      ToolTipText     =   "Permanente"
      Top             =   720
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   661
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
   Begin PC_World.Buton_3D_General Jocuri 
      Height          =   375
      Left            =   3240
      TabIndex        =   10
      ToolTipText     =   "Jocuri"
      Top             =   720
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
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
   Begin PC_World.Buton_3D_General Ajutorul 
      Height          =   285
      Left            =   8040
      TabIndex        =   12
      ToolTipText     =   "Ajutor"
      Top             =   120
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   503
      Caption         =   "Ajutor"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      XPColor_Pressed =   4194304
      XPColor_Hover   =   14654290
      XPDefaultColors =   0   'False
      BackColor       =   4194304
      ForeColor       =   16777215
   End
   Begin SHDocVwCtl.WebBrowser Text_Imagine 
      Height          =   1020
      Left            =   11400
      TabIndex        =   13
      Top             =   6240
      Visible         =   0   'False
      Width           =   1440
      ExtentX         =   2540
      ExtentY         =   1799
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
   Begin SHDocVwCtl.WebBrowser Voce 
      Height          =   975
      Left            =   3600
      TabIndex        =   18
      Top             =   9000
      Width           =   1335
      ExtentX         =   2355
      ExtentY         =   1720
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
   Begin PC_World.Buton_3D_General Driver 
      Height          =   255
      Left            =   120
      TabIndex        =   19
      ToolTipText     =   "Despre"
      Top             =   8640
      Width           =   1695
      _ExtentX        =   4683
      _ExtentY        =   450
      Caption         =   "Drivere"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
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
   Begin PC_World.Buton_3D_General Instalare 
      Height          =   375
      Left            =   480
      TabIndex        =   20
      ToolTipText     =   "Instalare"
      Top             =   4800
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   661
      Caption         =   "Instaleaza"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      Enabled         =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "BankScrD"
         Size            =   14.25
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
      SoundOver       =   ".\aferent\Negativ\Buton.wav"
   End
   Begin PC_World.Buton_3D_General Copiere 
      Height          =   375
      Left            =   2880
      TabIndex        =   21
      ToolTipText     =   "Copiere"
      Top             =   4800
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   661
      Caption         =   "Copiaza"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      Enabled         =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "BankScrD"
         Size            =   14.25
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
      SoundOver       =   ".\aferent\Negativ\Buton.wav"
   End
   Begin PC_World.Buton_3D_General Rulare 
      Height          =   375
      Left            =   9360
      TabIndex        =   22
      ToolTipText     =   "Rulare"
      Top             =   9360
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      Caption         =   "Ruleaza"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      Enabled         =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   14.25
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
      SoundOver       =   ".\aferent\Negativ\Buton.wav"
   End
   Begin PC_World.Buton_3D_General Citire 
      Height          =   375
      Left            =   9360
      TabIndex        =   23
      ToolTipText     =   "Citeste-ma"
      Top             =   9000
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      Caption         =   "Citeste-ma"
      ButtonStyle     =   3
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      Enabled         =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   14.25
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
      SoundOver       =   ".\aferent\Negativ\Buton.wav"
   End
   Begin PC_World.Listare_Tip_GIF Listare_Tip_GIF1 
      Height          =   2775
      Left            =   6600
      Top             =   3000
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   4895
      BackColor       =   1121794
   End
   Begin PC_World.Buton_3D_General Unde 
      Height          =   375
      Left            =   3600
      TabIndex        =   26
      Top             =   1320
      Visible         =   0   'False
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   661
      Caption         =   "Copiaza in ..."
      OriginalPicSizeW=   0
      OriginalPicSizeH=   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "BankScrD"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   99
      ShowFocusRect   =   0   'False
      XPColor_Pressed =   12632256
      XPColor_Hover   =   8421504
      XPDefaultColors =   0   'False
      BackColor       =   12632256
      ForeColor       =   4210752
      SoundOver       =   ".\aferent\Negativ\Buton.wav"
      TransparentBG   =   -1  'True
   End
   Begin VB.Label Cale_Copiaza_real 
      AutoSize        =   -1  'True
      Caption         =   "c:\PC_World\pc_world.exe"
      Height          =   195
      Left            =   240
      TabIndex        =   73
      Top             =   10080
      Width           =   1950
   End
   Begin VB.Label Bara_text_in_real 
      AutoSize        =   -1  'True
      Caption         =   "Text Internet"
      Height          =   195
      Left            =   240
      TabIndex        =   72
      Top             =   10320
      Width           =   900
   End
   Begin VB.Label Da_domnule_real 
      AutoSize        =   -1  'True
      Caption         =   "Cale spre directorul de salvare."
      Height          =   195
      Left            =   240
      TabIndex        =   71
      Top             =   10560
      Width           =   2175
   End
   Begin VB.Label Bara_text_in 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   0
      TabIndex        =   70
      Top             =   8280
      Width           =   11415
   End
   Begin VB.Label KB 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0 Kb"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   6960
      TabIndex        =   69
      Top             =   5880
      Visible         =   0   'False
      Width           =   2655
   End
   Begin VB.Image Normal_PC_World 
      Height          =   1665
      Index           =   0
      Left            =   6120
      Picture         =   "CD.frx":2E40C
      Top             =   11640
      Width           =   4455
   End
   Begin VB.Image Normal_PC_World 
      Height          =   1665
      Index           =   1
      Left            =   240
      Picture         =   "CD.frx":30005
      Top             =   11520
      Width           =   4455
   End
   Begin VB.Image PereteDeskTop 
      Height          =   180
      Index           =   2
      Left            =   120
      Picture         =   "CD.frx":315ED
      Top             =   9480
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image PereteDeskTop 
      Height          =   180
      Index           =   1
      Left            =   9600
      Picture         =   "CD.frx":3207F
      Top             =   6960
      Width           =   1095
   End
   Begin VB.Image Pe_web 
      Height          =   525
      Left            =   6840
      Picture         =   "CD.frx":32B11
      Top             =   7440
      Width           =   3075
   End
   Begin VB.Label Sunet_Status 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Sunet - ON"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   255
      Left            =   7320
      TabIndex        =   55
      Top             =   6120
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label InformatiiPrograme 
      BackStyle       =   0  'Transparent
      Caption         =   "Explicatii ..."
      ForeColor       =   &H00000000&
      Height          =   2295
      Left            =   600
      TabIndex        =   54
      Top             =   2160
      Width           =   4455
   End
   Begin VB.Label BSunetMSG 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "OFF"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000040&
      Height          =   255
      Index           =   1
      Left            =   1875
      TabIndex        =   53
      Top             =   6720
      Width           =   495
   End
   Begin VB.Label BSunetMSG 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "ON"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   0
      Left            =   1560
      TabIndex        =   52
      Top             =   6720
      Width           =   375
   End
   Begin VB.Image BSunet 
      Height          =   855
      Left            =   1560
      ToolTipText     =   "Sunet ON/OFF"
      Top             =   6840
      Width           =   735
   End
   Begin VB.Image BSunetNU 
      Height          =   255
      Left            =   1650
      Picture         =   "CD.frx":33622
      Top             =   6885
      Visible         =   0   'False
      Width           =   540
   End
   Begin VB.Image BSunetDA 
      Height          =   1125
      Left            =   1410
      Picture         =   "CD.frx":33D90
      Top             =   6600
      Width           =   1080
   End
   Begin VB.Image PereteDeskTop 
      Height          =   180
      Index           =   0
      Left            =   120
      Picture         =   "CD.frx":37D1A
      Top             =   9720
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Label ButonMareMSG 
      BackStyle       =   0  'Transparent
      Caption         =   "OFF"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   255
      Index           =   1
      Left            =   4800
      TabIndex        =   30
      Top             =   6600
      Width           =   495
   End
   Begin VB.Label ButonMareMSG 
      BackStyle       =   0  'Transparent
      Caption         =   "ON"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   4800
      TabIndex        =   29
      Top             =   5880
      Width           =   375
   End
   Begin VB.Image ButonMare2 
      Height          =   735
      Left            =   3960
      ToolTipText     =   "Interfata/Navigare internet"
      Top             =   6000
      Width           =   855
   End
   Begin VB.Image ButonulMare 
      Height          =   825
      Left            =   4095
      Picture         =   "CD.frx":387AC
      Top             =   5940
      Width           =   675
   End
   Begin VB.Label Da_domnule 
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00C0C0C0&
      Height          =   255
      Left            =   5760
      TabIndex        =   28
      Top             =   1440
      Width           =   4935
   End
   Begin VB.Label Sectiune 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Sectiune - Intro"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   255
      Index           =   1
      Left            =   6960
      TabIndex        =   27
      Top             =   2520
      Width           =   2535
   End
   Begin VB.Label Sectiune 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Captura"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   4
      Left            =   7440
      TabIndex        =   25
      Top             =   2280
      Width           =   1695
   End
   Begin VB.Label Sectiune 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Explicatii"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   375
      Index           =   3
      Left            =   2160
      TabIndex        =   24
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      X1              =   696
      X2              =   408
      Y1              =   32
      Y2              =   32
   End
   Begin VB.Label Dimensiune 
      Height          =   375
      Left            =   1560
      TabIndex        =   16
      Top             =   9000
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label Eu_la_suta 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0 %"
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   7680
      TabIndex        =   15
      Top             =   2760
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   360
      Left            =   120
      Picture         =   "CD.frx":3A526
      Top             =   720
      Width           =   360
   End
   Begin VB.Line Line8 
      BorderColor     =   &H00808080&
      X1              =   344
      X2              =   56
      Y1              =   35
      Y2              =   35
   End
   Begin VB.Label Bara_principal 
      BackStyle       =   0  'Transparent
      Caption         =   "PC World - Martie 2005"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   450
      Left            =   840
      TabIndex        =   11
      Top             =   75
      Width           =   4335
   End
End
Attribute VB_Name = "Instalare"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*******************************************************************************************

'                       Software & Copyright by Paul Gagniuc Aurelian

'*******************************************************************************************

Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

Private Declare Function LoadCursorFromFile Lib "user32" Alias "LoadCursorFromFileA" (ByVal lpFileName As String) As Long
Private Declare Function SetClassLong Lib "user32" Alias "SetClassLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long

Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Sub ReleaseCapture Lib "user32" ()

Private Declare Function mciExecute Lib "winmm.dll" (ByVal lpstrCommand As String) As Long

Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByVal lpvParam As String, ByVal fuWinIni As Long) As Long
Private Const SPI_SETDESKWALLPAPER = 20
Private Const SPIF_UPDATEINIFILE = 1


Const WM_NCLBUTTONDOWN = &HA1
Const HTCAPTION = 2

Public Cutiea_De_Date As String

Private Const Mouse_eu = (-12)
Private Incarca_mouse_Vechi As Long

Dim eroareNET As Boolean
Dim eroareNET_Inapoi As Boolean

Dim Paul_BTest As Variant
Dim Paul_FSize As Variant

Dim Siguranta As Boolean
Dim SigurantaSunet As Boolean

Dim BumBum As Variant

Public Meniu_Decupat As String
Public Informatii_Decupat As String

Public Meniu_UT As String
Public Meniu_MM As String
Public Meniu_JC As String
Public Meniu_IN As String
Public Meniu_AV As String
Public Meniu_PR As String

Public GeneralSunet As Boolean
Public Voce_Revista_Sunet As Boolean

Public arata_colt As Boolean
Dim I_X As Integer

Private Sub PicturaSys_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

If Hex(X) = "1E3C" Then

If arata_colt = True Then
Colt_alb.Show
MegaHz (App.Path & "\aferent\Negativ\sonar.wav")
arata_colt = False
Else
Colt_alb.Hide
MegaHz (App.Path & "\aferent\Negativ\sonar.wav")
arata_colt = True
End If

End If
End Sub

Private Sub Ajutorul_Click()
On Error Resume Next
MeniuTotal.Visible = False

Sterge_tot

Me.Height = 8280

ScanNet11.Visible = False
ScanNet22.Visible = False
ScanNet33.Visible = False
ScanNet44.Visible = False

Combustie.Visible = True 'STEMA
Acopera.Visible = True

Call dispari_apari("1")
Text_Imagine.Visible = True

DoEvents
Text_Imagine.Navigate (App.Path & "\aferent\Ajutor.htm")

Siguranta = False
ButonulMare.Visible = True
ButonMareMSG(0).ForeColor = 8421504
ButonMareMSG(1).ForeColor = &HFFFFFF

InternetFAZA1.Visible = False
DoEvents

End Sub

Private Sub Arata_La_suta_Timer()
On Error Resume Next
Eu_la_suta.Caption = (100 - Int(100 * Paul_BTest / Paul_FSize)) & " %"
End Sub

Private Sub Arhiva_Click()
On Error Resume Next
ShellExecute hWnd, "open", App.Path & "\arhiva.xls", vbNullString, vbNullString, conSwNormal
End Sub

Private Sub Bara_principal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next

If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(Me.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub BSunet_Click()
On Error Resume Next

MeniuTotal.Visible = False

If SigurantaSunet = False Then
SigurantaSunet = True
BSunetNU.Visible = False
BSunetMSG(0).ForeColor = &H8000&
BSunetMSG(1).ForeColor = &H40&
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S1.htm")

Sunet_Clip.Enabled = True
Sunet_Status.ForeColor = &HFF00&
Sunet_Status.Caption = "Sunet - ON"

Else
SigurantaSunet = False
BSunetNU.Visible = True
BSunetMSG(0).ForeColor = &H4000&
BSunetMSG(1).ForeColor = &HFF&
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")

Sunet_Clip.Enabled = False
Sunet_Status.Visible = True
Sunet_Status.ForeColor = 32768
Sunet_Status.Caption = "Sunet - OFF"

End If

End Sub

Private Sub BSunetDA_Click()
MeniuTotal.Visible = False
End Sub

Private Sub ButonMare2_Click()
On Error Resume Next

MeniuTotal.Visible = False

If Siguranta = False Then
Siguranta = True


Me.Height = 8535

ButonulMare.Visible = False
ButonMareMSG(0).ForeColor = &HFFFFFF
ButonMareMSG(1).ForeColor = 8421504

Call dispari_apari("1")
Text_Imagine.Visible = True
Text_Imagine.Stop
Text_Imagine.Navigate App.Path & "\aferent\Internet.htm"

ScanNet11.Visible = True
ScanNet22.Visible = True
ScanNet33.Visible = True
ScanNet44.Visible = True

Combustie.Visible = False
Acopera.Visible = True
InternetFAZA1.Visible = True




Else
Siguranta = False
'Index_Cunoscut = ""

Me.Height = 8280

Call dispari_apari("0")

ButonulMare.Visible = True
ButonMareMSG(0).ForeColor = 8421504
ButonMareMSG(1).ForeColor = &HFFFFFF

Text_Imagine.Stop
Acopera.Visible = False
Text_Imagine.Visible = False
InternetFAZA1.Visible = False

Combustie.Visible = True
End If

End Sub

Private Sub ButonulMare_Click()
MeniuTotal.Visible = False
End Sub

Private Sub Combustie_Click()
Dim upd As Integer
On Error Resume Next
upd = SPIF_UPDATEINIFILE
SystemParametersInfo SPI_SETDESKWALLPAPER, 0, App.Path & "\aferent\IMG\wallpaper.bmp", upd
End Sub

Private Sub Combustie_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Combustie.Picture = Normal_PC_World(1).Picture
End Sub

Private Sub Combustie_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Combustie.Picture = Normal_PC_World(0).Picture
End Sub

Private Sub Copiere_Click()
Dim Mesterul_Manole As String
On Error Resume Next

If SigurantaSunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")

Sunet_Clip.Enabled = False
Sunet_Status.Visible = True
Sunet_Status.ForeColor = 32768
Sunet_Status.Caption = "Sunet - OFF"

End If
SigurantaSunet = False
BSunetNU.Visible = True
BSunetMSG(0).ForeColor = &H8000&
BSunetMSG(1).ForeColor = &HFF&

MegaHz (App.Path & "\aferent\Negativ\voce\copiere.wav")
'Da_domnule_real
'Inainte a fost asta ... a fost cea corecta dar pt. ca Madalin pune executabile fara dependenta ...
'las aceasta cale (dir instalare este = dir copiere in acest caz) ... of of of of
'Mesterul_Manole = App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & "Kit\Kit.zip"
Mesterul_Manole = App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & Index_Cunoscut & "_Instalare\setup.exe"



Bara_copiere.Visible = True
Eu_la_suta.Visible = True
Pe_web.Visible = False

'Da_domnule.caption = "C:\PC_World\" & Meniu_Programe(Index_Cunoscut).Caption & ".zip"

Dimensiune.Caption = Copiere_Fisier(Mesterul_Manole, Cale_Copiaza_real.Caption)

Bara_copiere.Visible = False
Eu_la_suta.Visible = False
Pe_web.Visible = True


'Da_domnule.caption = "C:\PC_World\Kit(_" & XX(6) & "_).zip"
End Sub

Private Sub Copiere_MouseIn(Shift As Integer)
Unde.ForeColor = &HFFFFFF
KB.Visible = True
End Sub

Private Sub Copiere_MouseOut(Shift As Integer)
Unde.ForeColor = &H404040
KB.Visible = False
End Sub

Private Sub Despre_Click()
On Error Resume Next
DespreYO.Show

If SigurantaSunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")

Sunet_Clip.Enabled = False
Sunet_Status.Visible = True
Sunet_Status.ForeColor = 32768
Sunet_Status.Caption = "Sunet - OFF"

End If
SigurantaSunet = False
BSunetNU.Visible = True
BSunetMSG(0).ForeColor = &H8000&
BSunetMSG(1).ForeColor = &HFF&

MegaHz (App.Path & "\aferent\Negativ\voce\Eu.wav")


End Sub

Private Sub Driver_Click()
On Error Resume Next
MeniuTotal.Visible = False

Me.Height = 8280
Sterge_tot

'*************************************************************************
Text_Imagine.Visible = True
On Error Resume Next

Dim id_ul(1 To 10) As String

Dim C_Meniu(1 To 10) As Extrage_HTM
Dim O_Meniu(1 To 10) As Object

Dim N_functie(1 To 10) As String

N_functie(1) = "HTML_1"
N_functie(2) = "HTML_2"
N_functie(3) = "HTML_3"
N_functie(4) = "HTML_4"
N_functie(5) = "HTML_5"
N_functie(6) = "HTML_6"
N_functie(7) = "HTML_7"
N_functie(8) = "HTML_8"
N_functie(9) = "HTML_9"
N_functie(10) = "HTML_10"

id_ul(1) = "Paul1"
id_ul(2) = "Paul2"
id_ul(3) = "Paul3"
id_ul(4) = "Paul4"
id_ul(5) = "Paul5"
id_ul(6) = "Paul6"
id_ul(7) = "Paul7"
id_ul(8) = "Paul8"
id_ul(9) = "Paul9"
id_ul(10) = "Paul10"

Text_Imagine.Navigate App.Path & "\aferent\Drivere.htm"

Do
DoEvents
Loop While Text_Imagine.Busy

For xc = 1 To 10
Set C_Meniu(xc) = New Extrage_HTM
C_Meniu(xc).Detalii_HTM Me, N_functie(xc)
Set O_Meniu(xc) = Text_Imagine.Document.getElementById(id_ul(xc))
O_Meniu(xc).onclick = C_Meniu(xc)
Set C_Meniu(xc) = Nothing
Next xc
'*************************************************************************




Siguranta = False
ButonulMare.Visible = True
ButonMareMSG(0).ForeColor = 8421504
ButonMareMSG(1).ForeColor = &HFFFFFF

InternetFAZA1.Visible = False
DoEvents

ScanNet11.Visible = False
ScanNet22.Visible = False
ScanNet33.Visible = False
ScanNet44.Visible = False

Combustie.Visible = True 'STEMA
Acopera.Visible = True

Call dispari_apari("1")
Text_Imagine.Visible = True

'Index_Cunoscut = ""

End Sub

Private Sub Form_Click()
MeniuTotal.Visible = False
End Sub

Function dispari_apari(ByVal xx As String)
On Error Resume Next

arata_colt = True

Alegere_dir.Directorul_este.Path = "c:\"

Alegere_HTML = False
Alegere_HTML_asteapta = True

eroareNET = True

If xx = "1" Then
'------------------ vertical --------------------------------

Bara_acopera(0).Visible = True
Bara_acopera(0).Height = Text_Imagine.Height
Bara_acopera(0).Top = Text_Imagine.Top
Bara_acopera(0).Left = Text_Imagine.Left + 1

Bara_acopera(1).Visible = True
Bara_acopera(1).Height = Text_Imagine.Height
Bara_acopera(1).Top = Text_Imagine.Top
Bara_acopera(1).Left = Text_Imagine.Left + Text_Imagine.Width - 1

Bara_acopera(2).Visible = True
Bara_acopera(2).Height = Text_Imagine.Height
Bara_acopera(2).Top = Text_Imagine.Top
Bara_acopera(2).Left = Text_Imagine.Left + Text_Imagine.Width - 2

'------------------ vertical --------------------------------
'------------------ orizontal --------------------------------
Bara_acopera(5).Visible = True
Bara_acopera(5).Width = Text_Imagine.Width
Bara_acopera(5).Top = Text_Imagine.Top + 1
Bara_acopera(5).Left = Text_Imagine.Left

Bara_acopera(3).Visible = True
Bara_acopera(3).Width = Text_Imagine.Width
Bara_acopera(3).Top = Text_Imagine.Top + Text_Imagine.Height - 1
Bara_acopera(3).Left = Text_Imagine.Left

Bara_acopera(4).Visible = True
Bara_acopera(4).Width = Text_Imagine.Width
Bara_acopera(4).Top = Text_Imagine.Top + Text_Imagine.Height - 2
Bara_acopera(4).Left = Text_Imagine.Left
'------------------ orizontal --------------------------------
Else

'------------------ vertical --------------------------------

Bara_acopera(0).Visible = False
Bara_acopera(1).Visible = False
Bara_acopera(2).Visible = False
'------------------ vertical --------------------------------
'------------------ orizontal --------------------------------
Bara_acopera(5).Visible = False
Bara_acopera(3).Visible = False
Bara_acopera(4).Visible = False
'------------------ orizontal --------------------------------

End If
End Function


Private Sub Form_Load()
Dim Mouse_nou As Long
On Error Resume Next
If App.PrevInstance Then End

Utilitare.Font = "GlaserSteD"
Multimedia.Font = "GlaserSteD"
Jocuri.Font = "GlaserSteD"
Internet.Font = "GlaserSteD"
Antivirus.Font = "GlaserSteD"
Permanente.Font = "GlaserSteD"
Revista.Font = "GlaserSteD"
Despre.Font = "GlaserSteD"
Permanente.Font = "GlaserSteD"

Me.Instalare.Font = "BankScrD"
Me.Copiere.Font = "BankScrD"

Bara_principal.Caption = Text_Lunar

Text_Imagine.Stop
Voce.Stop
SunetHTM.Stop

Text_Imagine.Width = 728
Text_Imagine.Height = 286
Text_Imagine.Top = 82
Text_Imagine.Left = 10

Call dispari_apari("1")

Acopera.Top = Text_Imagine.Height + Text_Imagine.Top
Acopera.Left = 360
Sterge_tot

'Text_Imagine.Navigate (App.Path & "\aferent\Intrare.htm")

Text_Imagine.Visible = True


Mouse_nou = LoadCursorFromFile(App.Path & "\aferent\Cruce.ani")
Incarca_mouse_Vechi = SetClassLong(Me.hWnd, Mouse_eu, Mouse_nou)


Listare_Tip_GIF1.LoadFromFile (App.Path & "\YesNo.GIF")
Listare_Tip_GIF1.Play

'Sunet.Enabled = True

Da_domnule_real.Caption = "C:\PC_World\Kit_(" & xx(5) & ").exe"
Da_domnule.Caption = Recalibrare_text(Da_domnule, Da_domnule_real, Da_domnule_real.Caption)

On Error Resume Next

MkDir ("c:\PC_World")


For DaQ = 1 To 18
Meniu_Programe(DaQ).Top = Meniu_Programe(DaQ - 1).Top + Meniu_Programe(DaQ - 1).Height
DoEvents
Next DaQ

On Error Resume Next
Voce.Navigate (App.Path & "\aferent\Negativ\nimic.htm")
'Informatii.Navigate (App.Path & "\aferent\Negativ\Negativ.htm")

Listare_Tip_GIF1.LoadFromFile (App.Path & "\aferent\Negativ\Negativ.gif")
Listare_Tip_GIF1.Play


On Error Resume Next

pu = FreeFile
Open App.Path & "\aferent\biohazard.zulu" For Binary Access Read As #pu
Lungime = (LOF(pu))
Cutiea_De_Date = Space(Lungime)
Get #pu, , Cutiea_De_Date
Close #pu
'********************** Tot fisierul ******************************
'Meniuri

MasterProces = Cutiea_De_Date

'********************** Decupat Meniu *****************************
Khazadum0 = InStr(MasterProces, "[MENIURI]") + Len("[MENIURI]")
Khazadum_tmp = Mid(MasterProces, Khazadum0, Len(MasterProces))
Khazadum1 = InStr(Khazadum_tmp, "[MENIURI-STOP]") - 1

Meniu_Decupat = Mid(MasterProces, Khazadum0, Khazadum1)

'********************** Decupat Informatii *****************************

MasterProces = Cutiea_De_Date
Khazadum0 = InStr(MasterProces, "[Rupere-de-nori]") + Len("[Rupere-de-nori]")
Khazadum_tmp = Mid(MasterProces, Khazadum0, Len(MasterProces))
Khazadum1 = InStr(Khazadum_tmp, "[Rupere-de-nori-STOP]") - 1

Informatii_Decupat = Mid(MasterProces, Khazadum0, Khazadum1)


MasterProces = Informatii_Decupat

Informatii_Decupat_Sectiuni(1) = "[UTILITARE-EXPLICATII]"
Informatii_Decupat_Sectiuni(2) = "[MULTIMEDIA-EXPLICATII]"
Informatii_Decupat_Sectiuni(3) = "[JOCURI-EXPLICATII]"
Informatii_Decupat_Sectiuni(4) = "[INTERNET-EXPLICATII]"
Informatii_Decupat_Sectiuni(5) = "[ANTIVIRUS-EXPLICATII]"
Informatii_Decupat_Sectiuni(6) = "[PERMANENTE-EXPLICATII]"

Informatii_Decupat_Sectiuni_S(1) = "[UTILITARE-STOP]"
Informatii_Decupat_Sectiuni_S(2) = "[MULTIMEDIA-STOP]"
Informatii_Decupat_Sectiuni_S(3) = "[JOCURI-STOP]"
Informatii_Decupat_Sectiuni_S(4) = "[INTERNET-STOP]"
Informatii_Decupat_Sectiuni_S(5) = "[ANTIVIRUS-STOP]"
Informatii_Decupat_Sectiuni_S(6) = "[PERMANENTE-STOP]"

For qq = 1 To 6
DoEvents
Khazadum0 = InStr(MasterProces, Informatii_Decupat_Sectiuni(qq)) + Len(Informatii_Decupat_Sectiuni(qq))
Khazadum_tmp = Mid(MasterProces, Khazadum0, Len(MasterProces))
Khazadum1 = InStr(Khazadum_tmp, Informatii_Decupat_Sectiuni_S(qq)) - 1
Informatii_final(qq) = Mid(MasterProces, Khazadum0, Khazadum1)
Next qq

'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
MasterProces = Meniu_Decupat 'trebe

'**********************  Meniuri ********************************
Meniu_Decupat_Sectiuni(1) = "[UTILITARE]"
Meniu_Decupat_Sectiuni(2) = "[MULTIMEDIA]"
Meniu_Decupat_Sectiuni(3) = "[JOCURI]"
Meniu_Decupat_Sectiuni(4) = "[INTERNET]"
Meniu_Decupat_Sectiuni(5) = "[ANTIVIRUS]"
Meniu_Decupat_Sectiuni(6) = "[PERMANENTE]"

Meniu_Decupat_Sectiuni_S(1) = "[UT-STOP]"
Meniu_Decupat_Sectiuni_S(2) = "[MM-STOP]"
Meniu_Decupat_Sectiuni_S(3) = "[JC-STOP]"
Meniu_Decupat_Sectiuni_S(4) = "[IN-STOP]"
Meniu_Decupat_Sectiuni_S(5) = "[AV-STOP]"
Meniu_Decupat_Sectiuni_S(6) = "[PR-STOP]"

For rr = 1 To 6
Khazadum0 = InStr(MasterProces, Meniu_Decupat_Sectiuni(rr)) + Len(Meniu_Decupat_Sectiuni(rr))
Khazadum_tmp = Mid(MasterProces, Khazadum0, Len(MasterProces))
Khazadum1 = InStr(Khazadum_tmp, Meniu_Decupat_Sectiuni_S(rr)) - 1

Meniuri_Sectiune(rr) = Mid(MasterProces, Khazadum0, Khazadum1)

Meniuri_Sectiune(rr) = Replace(Meniuri_Sectiune(rr), vbCrLf, "")
Meniuri_Sectiune(rr) = Replace(Meniuri_Sectiune(rr), Chr(13), "")
Next rr
'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

'MsgBox Meniu_Decupat
'MsgBox Meniu_UT

Voce_Revista_Sunet = True
GeneralSunet = True

Siguranta = False
SigurantaSunet = True

' semnal ca a pornit control.exe
On Error GoTo 666
ff = FreeFile
Open "c:\PC_World\control.evolutie" For Output As #ff
Print #ff, "1"
Close #ff

GoTo 777
666:

On Error Resume Next
ff = FreeFile
Open "c:\PC_World\control.evolutie" For Output As #ff
Print #ff, "0"
Close #ff

777:
' semnal ca a pornit control.exe


I_X = 0
tq.cbSize = Len(tq)
tq.hWnd = PicturaSys(0).hWnd
tq.uID = 1&
tq.uFlags = NIF_MESSAGE Or NIF_ICON Or NIF_TIP
tq.uCallbackMessage = WM_MOUSEMOVE
tq.hIcon = PicturaSys(I_X).Picture
tq.szTip = Text_Lunar & Chr$(0)
Shell_NotifyIcon NIM_ADD, tq

TimpSys.Enabled = True
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Citire_Click()
'ShellExecute hWnd, "open", App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\Citeste_ma.txt", vbNullString, vbNullString, conSwNormal
On Error Resume Next

fura = FreeFile

Citeste.Show
DoEvents

If SigurantaSunet = True Then
DoEvents
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")
DoEvents

Sunet_Clip.Enabled = False
Sunet_Status.Visible = True
Sunet_Status.ForeColor = 32768
Sunet_Status.Caption = "Sunet - OFF"

End If
SigurantaSunet = False
BSunetNU.Visible = True
BSunetMSG(0).ForeColor = &H8000&
BSunetMSG(1).ForeColor = &HFF&

DoEvents
MegaHz (App.Path & "\aferent\Negativ\voce\citeste.wav")

Open App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\Citeste_ma.txt" For Input As #fura

Do While Not EOF(fura)
Line Input #fura, LinieCitita
DoEvents
Citeste.Formular_citire.Text = Citeste.Formular_citire.Text & vbCrLf & LinieCitita

Loop

Close #fura

End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next

Shell_NotifyIcon NIM_DELETE, tq

ff = FreeFile
Open "c:\PC_World\control.evolutie" For Output As #ff
Print #ff, "2"
Close #ff

Unload Alegere_dir
Unload Captura
Unload Citeste
Unload Colt_alb
Unload Copiere_HTM
Unload DespreYO
Unload Intrare
Unload Mesagerie_q
Unload Scan1
Unload Scan2
Unload Scan3
Unload Scan4
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Call ReleaseCapture
lngReturnValue = SendMessage(hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
End If
End Sub

Private Sub Inainte_Click()
On Error Resume Next
Text_Imagine.Stop
DoEvents
Text_Imagine.GoForward
End Sub

Private Sub Inapoi_Click()
On Error Resume Next
Text_Imagine.Stop
DoEvents
Text_Imagine.GoBack

If eroareNET_Inapoi = False Then
Text_Imagine.GoBack
End If

eroareNET_Inapoi = True
End Sub

Private Sub Incarca_Click()
On Error Resume Next
Text_Imagine.Navigate Linkul

End Sub

Private Sub InformatiiPrograme_Click()
MeniuTotal.Visible = False
End Sub

Private Sub Instalare_MouseIn(Shift As Integer)
KB.Visible = True
End Sub

Private Sub Instalare_MouseOut(Shift As Integer)
KB.Visible = False
End Sub

Private Sub Linkul_KeyPress(KeyAscii As Integer)
On Error Resume Next
If KeyAscii = 13 Then
Text_Imagine.Navigate Linkul
End If
End Sub

Private Sub Listare_Tip_GIF1_Click()
On Error Resume Next
MeniuTotal.Visible = False

If Index_Cunoscut = "" Then Exit Sub

Captura.Bara_principal.Caption = " PC World  -  " & Meniu_Programe(Index_Cunoscut).Caption
Captura.EcranMare.LoadFromFile (App.Path & "\aferent\" & Directorul_este & "\img\" & Index_Cunoscut & ".gif")
Captura.EcranMare.Play
Captura.Show

On Error Resume Next
If SigurantaSunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")

Sunet_Clip.Enabled = False
Sunet_Status.Visible = True
Sunet_Status.ForeColor = 32768
Sunet_Status.Caption = "Sunet - OFF"

End If
SigurantaSunet = False
BSunetNU.Visible = True
BSunetMSG(0).ForeColor = &H8000&
BSunetMSG(1).ForeColor = &HFF&

MegaHz (App.Path & "\aferent\Negativ\voce\copiaza_in.wav")
End Sub

Private Sub Pe_web_Click()
ShellExecute hWnd, "open", "http://www.pcworld.ro", vbNullString, vbNullString, conSwNormal
End Sub

Private Sub PereteDeskTop_Click(Index As Integer)
Dim upd As Integer
On Error Resume Next
upd = SPIF_UPDATEINIFILE
SystemParametersInfo SPI_SETDESKWALLPAPER, 0, App.Path & "\aferent\IMG\wallpaper.bmp", upd
End Sub

Private Sub PereteDeskTop_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
PereteDeskTop(1).Picture = PereteDeskTop(0).Picture
End Sub

Private Sub PereteDeskTop_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
PereteDeskTop(1).Picture = PereteDeskTop(2).Picture
End Sub

Private Sub ScanNet11_Click()
Scan2.Show
End Sub

Private Sub ScanNet22_Click()
Scan1.Show
End Sub

Private Sub ScanNet33_Click()
Scan3.Show
End Sub

Private Sub ScanNet44_Click()
Scan4.Show
End Sub

Private Sub Sectiune_Click(Index As Integer)
MeniuTotal.Visible = False
End Sub


Private Sub Text_Imagine_ProgressChange(ByVal Progress As Long, ByVal ProgressMax As Long)
'On Error Resume Next
'    ProgressBar1.Max = ProgressMax
'    ProgressBar1.Value = Progress
        
'        Pause 0.4
        
'    ProgressBar1.Refresh
End Sub

Private Sub Text_Imagine_NavigateComplete2(ByVal pDisp As Object, URL As Variant)
On Error Resume Next

If InStr(URL, "aferent") <> 0 Or InStr(URL, "PC_World") <> 0 Then URL = "http://www.pcworld.ro"
If eroareNET = False Then
Text_Imagine.Navigate (App.Path & "\aferent\er.htm")
eroareNET = True
End If

Linkul.Text = URL

End Sub

Private Sub Text_Imagine_NavigateError(ByVal pDisp As Object, URL As Variant, Frame As Variant, StatusCode As Variant, Cancel As Boolean)
On Error Resume Next

Text_Imagine.Stop
eroareNET = False
eroareNET_Inapoi = False
End Sub

Private Sub Text_Imagine_StatusTextChange(ByVal Text As String)
On Error Resume Next

If Text = "Done" Then Text = "Gata !"
Bara_text_in.Caption = Text
End Sub


Private Sub Rulare_Click()
On Error Resume Next

If SigurantaSunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")

Sunet_Clip.Enabled = False
Sunet_Status.Visible = True
Sunet_Status.ForeColor = 32768
Sunet_Status.Caption = "Sunet - OFF"

End If
SigurantaSunet = False
BSunetNU.Visible = True
BSunetMSG(0).ForeColor = &H8000&
BSunetMSG(1).ForeColor = &HFF&


MegaHz (App.Path & "\aferent\Negativ\voce\rulare.wav")
ShellExecute hWnd, "open", App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & Index_Cunoscut & "_Rulare\Aplicatie.exe", vbNullString, vbNullString, conSwNormal
End Sub


Private Sub Instalare_Click()
On Error Resume Next

If SigurantaSunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")

Sunet_Clip.Enabled = False
Sunet_Status.Visible = True
Sunet_Status.ForeColor = 32768
Sunet_Status.Caption = "Sunet - OFF"

End If

SigurantaSunet = False
BSunetNU.Visible = True
BSunetMSG(0).ForeColor = &H8000&
BSunetMSG(1).ForeColor = &HFF&

MegaHz (App.Path & "\aferent\Negativ\voce\instalare.wav")
ShellExecute hWnd, "open", App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & Index_Cunoscut & "_Instalare\setup.exe", vbNullString, vbNullString, conSwNormal
End Sub

Private Sub IntroEU_Click()
On Error Resume Next
MeniuTotal.Visible = False

Me.Height = 8280

Sterge_tot

Call dispari_apari("1")
Text_Imagine.Visible = True
Text_Imagine.Stop
Text_Imagine.Navigate (App.Path & "\aferent\Intrare.htm")
InternetFAZA1.Visible = False

Siguranta = False
ButonulMare.Visible = True
ButonMareMSG(0).ForeColor = 8421504
ButonMareMSG(1).ForeColor = &HFFFFFF

ScanNet11.Visible = False
ScanNet22.Visible = False
ScanNet33.Visible = False
ScanNet44.Visible = False

Combustie.Visible = True 'STEMA
Acopera.Visible = True

'Index_Cunoscut = ""
End Sub

Private Sub Meniu_Programe_MouseOut(Index As Integer, Shift As Integer)
On Error Resume Next
Meniu_Programe(Index).ForeColor = 16777215
End Sub

Private Sub Meniu_Programe_MouseIn(Index As Integer, Shift As Integer)
On Error Resume Next
Meniu_Programe(Index).ForeColor = &H0&
End Sub

Private Sub Meniu_Programe_Click(Index As Integer)
On Error Resume Next
Index_Cunoscut = Index

Da_domnule.Caption = "C:\PC_World\" & Meniu_Programe(Index_Cunoscut).Caption & ".exe"
Cale_Copiaza_real.Caption = "C:\PC_World\" & Meniu_Programe(Index_Cunoscut).Caption & ".exe"
'**********************************************************************************************
DoEvents

If Directorul_este = "UT" Then Informatia_este = 1
If Directorul_este = "MM" Then Informatia_este = 2
If Directorul_este = "JC" Then Informatia_este = 3
If Directorul_este = "IN" Then Informatia_este = 4
If Directorul_este = "AV" Then Informatia_este = 5
If Directorul_este = "PR" Then Informatia_este = 6


MasterProces = Informatii_final(Informatia_este)
Khazadum0 = InStr(MasterProces, "[" & Index & "]") + Len("[" & Index & "]")
Khazadum_tmp = Mid(MasterProces, Khazadum0, Len(MasterProces))
Khazadum1 = InStr(Khazadum_tmp, "[STOP]") - 1

InformatiiPrograme.Caption = Mid(MasterProces, Khazadum0, Khazadum1)


DoEvents
'**********************************************************************************************

Listare_Tip_GIF1.LoadFromFile (App.Path & "\aferent\" & Directorul_este & "\" & Index & ".gif")
Listare_Tip_GIF1.Play

zulu_alfa_eu (Index)

gg = FreeFile

MeniuTotal.Visible = False

DoEvents

Open App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & Index_Cunoscut & "_Instalare\setup.exe" For Binary As #gg
DoEvents
dimensiune_fisier = LOF(gg)
DoEvents

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
If KB.Caption <> "" Then
KB.Caption = "Pachetul are " & dimensiune_fisier & " " & c666
Else
KB.Caption = ""
End If
DoEvents

Close #gg

DoEvents
End Sub

Private Sub zulu_alfa_eu(ByVal numar As Variant)
On Error Resume Next

If FileExist(App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & Index_Cunoscut & "_Instalare\setup.exe") = True Then
Instalare.Enabled = True
Else
Instalare.Enabled = False
End If

If FileExist(App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & Index_Cunoscut & "_Rulare\Aplicatie.exe") = True Then
Rulare.Enabled = True
Else
Rulare.Enabled = False
End If

'Inainte a fost asta ... a fost cea corecta dar pt. ca Madalin pune executabile fara dependenta ...
'las aceasta cale (dir instalare este = dir copiere in acest caz) ... of of of of
'Mesterul_Manole = App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & "Kit\Kit.zip"

If FileExist(App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\" & Index_Cunoscut & "_Instalare\setup.exe") = True Then
Copiere.Enabled = True

Unde.Visible = True
Da_domnule.Visible = True

Else
Copiere.Enabled = False

Unde.Visible = False
Da_domnule.Visible = False
Unload Alegere_dir

End If

If FileExist(App.Path & "\aferent\Kit\" & Directorul_este & "\" & Index_Cunoscut & "\Citeste_ma.txt") = True Then
Citire.Enabled = True
Else
Citire.Enabled = False
End If

End Sub


Private Sub Micro_Click()
On Error Resume Next
Me.WindowState = 1
End Sub

Private Sub Stop_Click()
On Error Resume Next
Text_Imagine.Stop
End Sub

Private Sub Sunet_Clip_Timer()
On Error Resume Next

If Sunet_Status.Visible = False Then
Sunet_Status.Visible = True
Else
Sunet_Status.Visible = False
End If

End Sub

Private Sub Sunet_Timer()
On Error Resume Next
Dim X

X = mciExecute("Play " & App.Path & "\aferent\S_fundal.wav")

Sunet.Enabled = False

'MsgBox App.Path & "\aferent\S_fundal.wav"
End Sub

Private Sub Sterge_tot()
On Error Resume Next

For zulu = 0 To 18
Meniu_Programe(zulu).Visible = False
Next zulu
End Sub

Private Sub Unde_Click()

On Error Resume Next

Alegere_dir.Show

If SigurantaSunet = True Then
SunetHTM.Navigate (App.Path & "\aferent\Negativ\S0.htm")
End If

SigurantaSunet = False
BSunetNU.Visible = True
BSunetMSG(0).ForeColor = &H8000&
BSunetMSG(1).ForeColor = &HFF&

MegaHz (App.Path & "\aferent\Negativ\voce\copiaza_in.wav")


End Sub

Private Sub Utilitare_Click()
On Error Resume Next

InformatiiPrograme.Caption = ""

MeniuTotal.Visible = False
Sterge_tot

fata_de_poker (1)

Listare_Tip_GIF1.LoadFromFile (App.Path & "\aferent\Negativ\Negativ.gif")
Listare_Tip_GIF1.Play


Unde.Visible = False
Da_domnule.Visible = False
Unload Alegere_dir

Instalare.Enabled = False 'sa nu uit ca poate creea probleme numele ...
Rulare.Enabled = False
Citire.Enabled = False
Copiere.Enabled = False

Acopera.Visible = False
Call dispari_apari("0")
Text_Imagine.Visible = False

Index_Cunoscut = ""

Directorul_este = "UT"

MeniuTotal.Left = Utilitare.Left

Metal.Height = Meniu_Programe(BumBum).Top + Meniu_Programe(BumBum).Height + 240
MeniuTotal.Height = Metal.Height \ Screen.TwipsPerPixelY

MeniuTotal.Visible = True

Sectiune(1).Caption = "Utilitare"

Voce_Meniuri
End Sub

Private Sub Multimedia_Click()
On Error Resume Next

InformatiiPrograme.Caption = ""

MeniuTotal.Visible = False
Sterge_tot

fata_de_poker (2)

Listare_Tip_GIF1.LoadFromFile (App.Path & "\aferent\Negativ\Negativ.gif")
Listare_Tip_GIF1.Play


MeniuTotal.Left = Multimedia.Left

Unde.Visible = False
Da_domnule.Visible = False
Unload Alegere_dir

Instalare.Enabled = False
Rulare.Enabled = False
Citire.Enabled = False
Copiere.Enabled = False


Acopera.Visible = False
Call dispari_apari("0")
Text_Imagine.Visible = False

Index_Cunoscut = ""

Directorul_este = "MM"

MeniuTotal.Left = Multimedia.Left
Metal.Height = Meniu_Programe(BumBum).Top + Meniu_Programe(BumBum).Height + 240 ' \ Screen.TwipsPerPixelY) 'MeniuTotal.Height * Screen.TwipsPerPixelY
MeniuTotal.Height = Metal.Height \ Screen.TwipsPerPixelY

MeniuTotal.Visible = True

Sectiune(1).Caption = "Multimedia"

Voce_Meniuri
End Sub


Private Sub Jocuri_Click()
On Error Resume Next

InformatiiPrograme.Caption = ""

Sterge_tot
fata_de_poker (3)

Listare_Tip_GIF1.LoadFromFile (App.Path & "\aferent\Negativ\Negativ.gif")
Listare_Tip_GIF1.Play


Unde.Visible = False
Da_domnule.Visible = False
Unload Alegere_dir

Instalare.Enabled = False
Rulare.Enabled = False
Citire.Enabled = False
Copiere.Enabled = False

'Picture1.Visible = True
'Picture2.Visible = True
'Picture3.Visible = True
'Picture4.Visible = True
'Linie.Visible = True

'Crater_UMJIA.Visible = True
'Crater_UMJIA2.Visible = True
Acopera.Visible = False
Call dispari_apari("0")
Text_Imagine.Visible = False

Index_Cunoscut = ""

Directorul_este = "JC"

MeniuTotal.Left = Jocuri.Left
Metal.Height = Meniu_Programe(BumBum).Top + Meniu_Programe(BumBum).Height + 240 ' \ Screen.TwipsPerPixelY) 'MeniuTotal.Height * Screen.TwipsPerPixelY
MeniuTotal.Height = Metal.Height \ Screen.TwipsPerPixelY

MeniuTotal.Visible = True

Sectiune(1).Caption = "Jocuri"

Voce_Meniuri
End Sub

Private Sub Internet_Click()
On Error Resume Next

InformatiiPrograme.Caption = ""

MeniuTotal.Visible = False

Sterge_tot

fata_de_poker (4)

Listare_Tip_GIF1.LoadFromFile (App.Path & "\aferent\Negativ\Negativ.gif")
Listare_Tip_GIF1.Play

Unde.Visible = False
Da_domnule.Visible = False
Unload Alegere_dir

Instalare.Enabled = False
Rulare.Enabled = False
Citire.Enabled = False
Copiere.Enabled = False

Acopera.Visible = False
Call dispari_apari("0")
Text_Imagine.Visible = False

Index_Cunoscut = ""

Directorul_este = "IN"

MeniuTotal.Left = Internet.Left
Metal.Height = Meniu_Programe(BumBum).Top + Meniu_Programe(BumBum).Height + 240 ' \ Screen.TwipsPerPixelY) 'MeniuTotal.Height * Screen.TwipsPerPixelY
MeniuTotal.Height = Metal.Height \ Screen.TwipsPerPixelY

MeniuTotal.Visible = True

Sectiune(1).Caption = "Internet"

Voce_Meniuri
End Sub


Private Sub Antivirus_Click()
On Error Resume Next

InformatiiPrograme.Caption = ""

MeniuTotal.Visible = False
Sterge_tot

fata_de_poker (5)

Listare_Tip_GIF1.LoadFromFile (App.Path & "\aferent\Negativ\Negativ.gif")
Listare_Tip_GIF1.Play

Unde.Visible = False
Da_domnule.Visible = False
Unload Alegere_dir

Instalare.Enabled = False
Rulare.Enabled = False
Citire.Enabled = False
Copiere.Enabled = False

Acopera.Visible = False
Call dispari_apari("0")
Text_Imagine.Visible = False

Index_Cunoscut = ""

Directorul_este = "AV"

MeniuTotal.Left = Antivirus.Left
Metal.Height = Meniu_Programe(BumBum).Top + Meniu_Programe(BumBum).Height + 240 ' \ Screen.TwipsPerPixelY) 'MeniuTotal.Height * Screen.TwipsPerPixelY
MeniuTotal.Height = Metal.Height \ Screen.TwipsPerPixelY

MeniuTotal.Visible = True

Sectiune(1).Caption = "Antivirus"

Voce_Meniuri
End Sub

Private Sub Permanente_Click()
On Error Resume Next

InformatiiPrograme.Caption = ""

MeniuTotal.Visible = False
Sterge_tot

fata_de_poker (6)

Listare_Tip_GIF1.LoadFromFile (App.Path & "\aferent\Negativ\Negativ.gif")
Listare_Tip_GIF1.Play

Unde.Visible = False
Da_domnule.Visible = False
Unload Alegere_dir

Instalare.Enabled = False
Rulare.Enabled = False
Citire.Enabled = False
Copiere.Enabled = False

Acopera.Visible = False
Call dispari_apari("0")
Text_Imagine.Visible = False

Index_Cunoscut = ""

Directorul_este = "PR"

MeniuTotal.Left = Permanente.Left
Metal.Height = Meniu_Programe(BumBum).Top + Meniu_Programe(BumBum).Height + 240 ' \ Screen.TwipsPerPixelY) 'MeniuTotal.Height * Screen.TwipsPerPixelY
MeniuTotal.Height = Metal.Height \ Screen.TwipsPerPixelY

MeniuTotal.Visible = True

Sectiune(1).Caption = "Permanente"

Voce_Meniuri
End Sub




Private Sub Voce_Revista()
On Error Resume Next

If Bula_Sunet = False Then
If Voce_Revista_Sunet = True Then
Voce.Navigate (App.Path & "\aferent\Negativ\Voce2.htm")
End If
End If

Voce_Revista_Sunet = False
End Sub

Private Sub Voce_Meniuri()
On Error Resume Next

If Bula_Sunet = False Then
If GeneralSunet = True Then
Voce.Navigate (App.Path & "\aferent\Negativ\Voce1.htm")
End If
End If

GeneralSunet = False
End Sub

Private Sub Revista_Click()
On Error Resume Next
MeniuTotal.Visible = False
Sterge_tot

Me.Height = 8280

'************************************************************************************
Text_Imagine.Visible = True
On Error Resume Next

Dim id_ul(1 To 10) As String

Dim C_Meniu(1 To 10) As Extrage_HTM
Dim O_Meniu(1 To 10) As Object

Dim N_functie(1 To 10) As String

N_functie(1) = "HTML_1"
N_functie(2) = "HTML_2"
N_functie(3) = "HTML_3"
N_functie(4) = "HTML_4"
N_functie(5) = "HTML_5"
N_functie(6) = "HTML_6"
N_functie(7) = "HTML_7"
N_functie(8) = "HTML_8"
N_functie(9) = "HTML_9"
N_functie(10) = "HTML_10"

id_ul(1) = "Paul1"
id_ul(2) = "Paul2"
id_ul(3) = "Paul3"
id_ul(4) = "Paul4"
id_ul(5) = "Paul5"
id_ul(6) = "Paul6"
id_ul(7) = "Paul7"
id_ul(8) = "Paul8"
id_ul(9) = "Paul9"
id_ul(10) = "Paul10"

ScanNet11.Visible = False
ScanNet22.Visible = False
ScanNet33.Visible = False
ScanNet44.Visible = False

Combustie.Visible = True 'STEMA
Acopera.Visible = True

Text_Imagine.Navigate App.Path & "\aferent\Revista.htm"

Do
DoEvents
Loop While Text_Imagine.Busy

For xc = 1 To 10
Set C_Meniu(xc) = New Extrage_HTM
C_Meniu(xc).Detalii_HTM Me, N_functie(xc)
Set O_Meniu(xc) = Text_Imagine.Document.getElementById(id_ul(xc))
O_Meniu(xc).onclick = C_Meniu(xc)
Set C_Meniu(xc) = Nothing
Next xc

'************************************************************************************

Call dispari_apari("1")
Text_Imagine.Visible = True

Index_Cunoscut = ""

Sectiune(1).Caption = "Revista"

Voce_Revista
DoEvents
End Sub

Private Sub X_Iesire_Click()

On Error Resume Next
BackUp_sistem = "1"

Unload Me
End
End Sub
'Success = ShellExecute(0&, vbNullString, "mailto:" & email, vbNullString, "C:\", SW_SHOWNORMAL)



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

Function fata_de_poker(ByVal xx As Variant)
'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
On Error Resume Next

MasterProces0 = Meniuri_Sectiune(xx)
warza = 0
0:
Khazadum = InStr(MasterProces0, "#")
linie = Mid(MasterProces0, 1, Khazadum - 1)
MasterProces0 = Mid(MasterProces0, InStr(MasterProces0, "#") + 1, Len(MasterProces0))


MasterProces = linie
alfa = 0

'MsgBox linie

1:
Khazadum = InStr(MasterProces, "|")
Textmeniu = Mid(MasterProces, 1, Khazadum - 1)
MasterProces = Mid(MasterProces, InStr(MasterProces, "|") + 1, Len(MasterProces))

BumBum = warza

If alfa = 0 Then
ConditieHTML = Textmeniu
End If

If alfa = 1 Then
Meniu_Programe(warza).Caption = Textmeniu
Meniu_Programe(warza).Visible = True
End If

alfa = alfa + 1

If MasterProces = "" Then GoTo 2

GoTo 1
2:

warza = warza + 1

If MasterProces0 = "" Then GoTo 22

GoTo 0
22:
'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

End Function


Public Sub HTML_1()
Fapta_HTM ("Paul1")
End Sub

Public Sub HTML_2()
Fapta_HTM ("Paul2")
End Sub

Public Sub HTML_3()
Fapta_HTM ("Paul3")
End Sub

Public Sub HTML_4()
Fapta_HTM ("Paul4")
End Sub

Public Sub HTML_5()
Fapta_HTM ("Paul5")
End Sub

Public Sub HTML_6()
Fapta_HTM ("Paul6")
End Sub

Public Sub HTML_7()
Fapta_HTM ("Paul7")
End Sub

Public Sub HTML_8()
Fapta_HTM ("Paul8")
End Sub

Public Sub HTML_9()
Fapta_HTM ("Paul9")
End Sub

Public Sub HTML_10()
Fapta_HTM ("Paul10")
End Sub

'*********************************************
Public Sub Fapta_HTM(ByVal goliat As String)
On Error Resume Next
Unload Copiere_HTM

Nume_Fisier_HTML = App.Path & "\" & Text_Imagine.Document.getElementById(goliat).Value
Copiere_HTM.nume.Caption = Text_Imagine.Document.getElementById(goliat).Name

Copiere_HTM.Cale_dimensiune.Caption = Nume_Fisier_HTML
Copiere_HTM.Nume_fisier_C.Caption = Recalibrare_text(Copiere_HTM.Nume_fisier_C, Copiere_HTM.Cale_dimensiune, Copiere_HTM.Cale_dimensiune.Caption)

MegaHz (App.Path & "\aferent\Negativ\voce\copiaza_in.wav")

Copiere_HTM.Show
End Sub

Private Sub TimpSys_Timer()
I_X = I_X + 1
If I_X > 4 Then I_X = 0
tq.hIcon = PicturaSys(I_X).Picture
Shell_NotifyIcon NIM_MODIFY, tq
End Sub
