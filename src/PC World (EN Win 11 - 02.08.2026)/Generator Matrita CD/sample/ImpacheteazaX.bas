Attribute VB_Name = "ImpacheteazaX"
' The easy way and best way to make the systray bigger is to simply add icons to it!
Type NOTIFYICONDATA
    cbSize As Long
    hwnd As Long
    uId As Long
    uFlags As Long
    ucallbackMessage As Long
    hIcon As Long
    szTip As String * 64
End Type
Private Declare Function Shell_NotifyIcon Lib "shell32" Alias "Shell_NotifyIconA" (ByVal dwMessage As Long, pnid As NOTIFYICONDATA) As Boolean
Private Const NIM_ADD = &H0
Private Const NIM_MODIFY = &H1
Private Const NIM_DELETE = &H2
Global Const NIF_MESSAGE = &H1
Global Const NIF_ICON = &H2
Global Const NIF_TIP = &H4
' Array Magic!
Global NIMg(1 To 100) As New Inlocuire_ICO
Global NIMGn(1 To 100) As NOTIFYICONDATA

Sub ResizeTray(Times As Integer, Command As Integer)
'This makes the systray larger (length wise) by simply adding more "Ghost" _
or foney icons to the tray.  This is the easyest way I could find to enlarging _
the system tray.  I caped the number of "Ghost" Icons to onehundred.. Who really _
needs to have a systray that BIG?  If you dont beleive me do a call ResizeTray (100,1) _
and see how huge it gets.
Dim X As Integer
If Command = 1 Then
    For X = 1 To Times
        Load NIMg(X)
        With NIMGn(X)
            .hwnd = NIMg(X).hwnd
            .cbSize = Len(NIMGn(X))
            .uId = 1&
            .uFlags = NIF_ICON
            .hIcon = NIMg(X).Icon
            .szTip = ""
            .ucallbackMessage = &H0
        End With
        Shell_NotifyIcon NIM_ADD, NIMGn(X)
    Next X
Else:
    Unload Inlocuire_Iconite
    For X = 1 To Times
        Shell_NotifyIcon NIM_DELETE, NIMGn(X)
        Unload NIMg(X)
    Next X
End If
End Sub


