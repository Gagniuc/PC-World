Attribute VB_Name = "PCW_josX"
'########## Encapsulate Tray Sub functions

Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Declare Function GetParent Lib "user32" (ByVal hwnd As Long) As Long
Declare Function SetParent Lib "user32" (ByVal hWndChild As Long, ByVal hWndNewParent As Long) As Long
Declare Function GetWindowRect Lib "user32" (ByVal hwnd As Long, lpRect As RECT) As Long
Type RECT
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type
Private Declare Sub SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long)
Const HWND_TOPMOST = -1
Const HWND_NOTOPMOST = -2
Const SWP_NOSIZE = &H1
Const SWP_NOMOVE = &H2
Const SWP_NOACTIVATE = &H10
Const SWP_SHOWWINDOW = &H40
Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWnd1 As Long, ByVal hWnd2 As Long, ByVal lpsz1 As String, ByVal lpsz2 As String) As Long
Declare Function MoveWindow Lib "user32" (ByVal hwnd As Long, ByVal X As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal bRepaint As Long) As Long
Global OldRect As RECT

Sub Main()
Load Inlocuire_Iconite
Call Encapsulate_Tray
End Sub
Function GetTrayhWnd() As Long
Dim OurParent As Long
Dim OurHandle As Long
Dim X As Long
X = 0
strt:
OurParent = FindWindow("Shell_TrayWnd", "")
OurHandle = FindWindowEx(OurParent&, X, "TrayNotifyWnd", vbNullString)
If OurHandle = 0 Then
    X = Val(X) + 1
    If X = 5000 Then Exit Function
    GoTo strt
Else: End If
GetTrayhWnd = OurHandle
End Function
Sub Encapsulate_Tray()
Dim fWidth As Integer
Dim fHeight As Integer
Dim TrayWindowRect As RECT
' This Gets the RECT of the windows tray (Clock and Tray Icons together)
GetWindowRect GetTrayhWnd, TrayWindowRect
'This fixes the window RECT so the X and Y values are ZERO
fWidth = TrayWindowRect.Right - TrayWindowRect.Left
fHeight = TrayWindowRect.Bottom - TrayWindowRect.Top
With TrayWindowRect
    .Top = 0
    .Left = 0
    .Right = fWidth
    '.Bottom = fHeight
End With
'This resizes our form and positions it over the tray and sets it to refresh when needed.
MoveWindow Inlocuire_Iconite.hwnd, TrayWindowRect.Left, _
    TrayWindowRect.Top, TrayWindowRect.Right, TrayWindowRect.Bottom, 1
'This sets our form so it's always on top, this _
way the icons and clock will always be behind our form.
SetWindowPos Inlocuire_Iconite.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
'This actually sets our form to be a child of the Tray so that _
when the tray resizes it fires the repaint that will also resize our form so that the clock and Icons never show (Pretty F*ckn cool ha?).
SetParent Inlocuire_Iconite.hwnd, GetTrayhWnd
'This sets a public rect so that when more icons are added to the tray the form will resize _
see the CheckEngine and ChkEngine functions
OldRect = TrayWindowRect
Inlocuire_Iconite.Show
Inlocuire_Iconite.Scroll.Enabled = True
End Sub


Sub CheckEngine()
'This checks the current systray rect and compares _
it to the old rect and if they are different a new rect _
is formed and the form is rezied/moved accrodingly
DoEvents
Dim TrayWindowRect As RECT
GetWindowRect GetTrayhWnd, TrayWindowRect
'This fixes the window RECT so the X and Y values are ZERO
fWidth = TrayWindowRect.Right - TrayWindowRect.Left
fHeight = TrayWindowRect.Bottom - TrayWindowRect.Top
With TrayWindowRect
    .Top = 0
    .Left = 0
    .Right = fWidth
    '.Bottom = fHeight
End With
' Checks to see if systray Rect is the same size as it once was, if it isnt the form _
is resized.
If (TrayWindowRect.Bottom <> OldRect.Bottom And TrayWindowRect.Right <> OldRect.Right) _
Or (TrayWindowRect.Bottom <> OldRect.Bottom Or TrayWindowRect.Right <> OldRect.Right) Then
Debug.Print "AHHH Im moving!"
    MoveWindow Inlocuire_Iconite.hwnd, TrayWindowRect.Left, _
    TrayWindowRect.Top, TrayWindowRect.Right, TrayWindowRect.Bottom, 1
    SetWindowPos Inlocuire_Iconite.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
    OldRect = TrayWindowRect
Else: End If
End Sub


