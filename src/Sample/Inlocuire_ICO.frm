VERSION 5.00
Begin VB.Form Inlocuire_ICO 
   BackColor       =   &H00808080&
   BorderStyle     =   0  'None
   Caption         =   "PCW"
   ClientHeight    =   105
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   120
   Icon            =   "Inlocuire_ICO.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   105
   ScaleWidth      =   120
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Inlocuire_ICO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Terminate()
Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload Me
End Sub

