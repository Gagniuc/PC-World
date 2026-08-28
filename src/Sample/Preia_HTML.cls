VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Extrage_HTM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Cheama_OBJ As Object
Private Cheama_metoda As String

Public Sub Detalii_HTM(ByRef CO As Object, ByRef CM As String)
  On Error Resume Next
  Set Cheama_OBJ = CO
  Cheama_metoda = CM
End Sub
Public Sub Extrage_info_din_HTML()
Attribute Extrage_info_din_HTML.VB_UserMemId = 0
  On Error Resume Next
  CallByName Cheama_OBJ, Cheama_metoda, VbMethod
End Sub

Private Sub Class_Terminate()
  On Error Resume Next
  Set Cheama_OBJ = Nothing
End Sub


