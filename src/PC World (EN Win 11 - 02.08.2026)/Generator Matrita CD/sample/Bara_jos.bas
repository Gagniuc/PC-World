Attribute VB_Name = "Bara_jos"
Option Explicit

'==========================================================================================================='
Public Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Public Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Public Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long
Public Declare Function Shell_NotifyIcon Lib "shell32.dll" Alias "Shell_NotifyIconA" (ByVal dwMessage As Long, lpData As NOTIFYICONDATA) As Long



Public Type OSVERSIONINFO
        Dimensiune_ver_OS As Long
        Ver_Major As Long
        Ver_Minor As Long
        Nr_Compilat As Long
        Nr_Platforma As Long
End Type

Public Const VER_PLATFORM_WIN32_NT = 2
Public Const VER_PLATFORM_WIN32_WINDOWS = 1
Public Const VER_PLATFORM_WIN32s = 0


Public Directorul_este As String
Public Index_Cunoscut As String

Public VersiuneOS_Acum As OSVERSIONINFO
'==========================================================================================================='
Dim tmpBuffer As String * 255

Public Type NOTIFYICONDATA
cbSize As Long
hWnd As Long
uID As Long
uFlags As Long
uCallbackMessage As Long
hIcon As Long
szTip As String * 64
End Type

Global tq As NOTIFYICONDATA
   
Global Const NIM_ADD = &H0
Global Const NIM_MODIFY = &H1
Global Const NIM_DELETE = &H2
Global Const NIF_MESSAGE = &H1
Global Const NIF_ICON = &H2
Global Const NIF_TIP = &H4
Global Const WM_MOUSEMOVE = &H200

Public Sub GetSysInfo()
On Error Resume Next
Dim OpenReg As Boolean
Dim MHz_CPU_yo As String

'==========================================================================================================='
    GetComputerName tmpBuffer, 255
    Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & " Interfata functioneaza pe calculatorul " & Trim$(tmpBuffer)
'-----------------------------------------------------------------------------------------------------------'
    GetUserName tmpBuffer, 255
    Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ", contul " & tmpBuffer
    Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ", IP: [" & Scan1.LocalIP_eu.LocalIP & "]"

On Error GoTo 455

OpenReg = OpenRegistry(GetCompName())
If OpenReg > 0 Then GoTo 455
GetComputerInfo
If GetComputerInfo > 0 Then
GoTo 455
End If

MHz_CPU_yo = CPU.MHz
If MHz_CPU_yo = "" Then GoTo 455
Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ", procesorul are frecventa de " & MHz_CPU_yo & " MHz"
455:

On Error Resume Next
'-----------------------------------------------------------------------------------------------------------'
'    VersiuneOS_Acum.Dimensiune_ver_OS = 148
'    GetVersionEx VersiuneOS_Acum
'-----------------------------------------------------------------------------------------------------------'
'    If VersiuneOS_Acum.Nr_Platforma = VER_PLATFORM_WIN32_WINDOWS Then
'
'        If VersiuneOS_Acum.Ver_Minor = 0 Then
'        Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ", platforma " & "9x"
'        Else
'        Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ", platforma " & "9x"
'        End If
'
'    ElseIf VersiuneOS_Acum.Nr_Platforma = VER_PLATFORM_WIN32_NT Then
'
'        If VersiuneOS_Acum.Ver_Major = 4 Then
'        Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ", platforma " & "NT"
'        Else
'        Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ", platforma " & "NT"
'        End If
'
'    End If
'-----------------------------------------------------------------------------------------------------------'

Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ". Informatii extrase astazi - " & Date
Mesagerie_q.afiseaza.Text = Mesagerie_q.afiseaza.Text & ". Interfata de rezerva poate fi gasita in " & _
App.Path & "\aferent\BackUp.htm" & ", sau poate fi pornita direct din interfata principala (vezi AJUTOR)"

End Sub

