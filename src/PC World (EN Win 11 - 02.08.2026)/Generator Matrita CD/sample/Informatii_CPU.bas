Attribute VB_Name = "Informatii_CPU"
Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" _
    (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, _
    ByVal samDesired As Long, phkResult As Long) As Long

Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long

Declare Function RegEnumKeyEx Lib "advapi32.dll" Alias "RegEnumKeyExA" _
    (ByVal hKey As Long, ByVal dwIndex As Long, ByVal lpName As String, _
    lpcbName As Long, ByVal lpReserved As Long, ByVal lpClass As String, _
    lpcbClass As Long, lpftLastWriteTime As Any) As Long

Declare Function RegConnectRegistry Lib "advapi32.dll" Alias "RegConnectRegistryA" _
    (ByVal lpMachineName As String, ByVal hKey As Long, phkResult As Long) As Long
    
Public Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" _
    (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, _
    lpType As Long, lpData As Any, lpcbData As Long) As Long


Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" _
    (ByVal lpBuffer As String, nSize As Long) As Long


Private Const MAX_COMPUTERNAME_LENGTH As Long = 31
Private Const FILTER_WORKSTATION_TRUST_ACCOUNT = &H10

Public Const HKEY_PERFORMANCE_DATA = &H80000004
Public Const HKEY_DYN_DATA = &H80000006
Public Const HKEY_CURRENT_CONFIG = &H80000005
Public Const HKEY_CLASSES_ROOT = &H80000000
Public Const HKEY_CURRENT_USER = &H80000001
Public Const HKEY_LOCAL_MACHINE = &H80000002
Public Const HKEY_USERS = &H80000003

Public Const KEY_ALL_ACCESS = &H3F
Public Const REG_OPTION_NON_VOLATILE = 0&
Public Const REG_CREATED_NEW_KEY = &H1
Public Const REG_OPENED_EXISTING_KEY = &H2
Public Const ERROR_SUCCESS = 0&
Public Const REG_SZ = (1)


Public Const SYNCHRONIZE = &H100000
Public Const STANDARD_RIGHTS_ALL = &H1F0000
Public Const KEY_QUERY_VALUE = &H1
Public Const KEY_SET_VALUE = &H2
Public Const KEY_CREATE_LINK = &H20
Public Const KEY_CREATE_SUB_KEY = &H4
Public Const KEY_ENUMERATE_SUB_KEYS = &H8
Public Const KEY_EVENT = &H1
Public Const KEY_NOTIFY = &H10
Public Const READ_CONTROL = &H20000
Public Const STANDARD_RIGHTS_READ = (READ_CONTROL)
Public Const STANDARD_RIGHTS_WRITE = (READ_CONTROL)

Public Const KEY_READ = ((STANDARD_RIGHTS_READ Or KEY_QUERY_VALUE Or KEY_ENUMERATE_SUB_KEYS Or KEY_NOTIFY) And (Not SYNCHRONIZE))
Public Const KEY_EXECUTE = (KEY_READ)
Public Const KEY_WRITE = ((STANDARD_RIGHTS_WRITE Or KEY_SET_VALUE Or KEY_CREATE_SUB_KEY) And (Not SYNCHRONIZE))
Public Const REG_BINARY = 3

Public Const REG_DWORD = 4
Public Const REG_DWORD_BIG_ENDIAN = 5
Public Const REG_DWORD_LITTLE_ENDIAN = 4
Public Const REG_EXPAND_SZ = 2
Public Const REG_FULL_RESOURCE_DESCRIPTOR = 9
Public Const REG_LINK = 6
Public Const REG_MULTI_SZ = 7
Public Const REG_NONE = 0

Public Const REG_NOTIFY_CHANGE_ATTRIBUTES = &H2
Public Const REG_NOTIFY_CHANGE_LAST_SET = &H4
Public Const REG_NOTIFY_CHANGE_NAME = &H1
Public Const REG_NOTIFY_CHANGE_SECURITY = &H8
Public Const REG_OPTION_BACKUP_RESTORE = 4
Public Const REG_OPTION_CREATE_LINK = 2

Public Const REG_OPTION_RESERVED = 0
Public Const REG_OPTION_VOLATILE = 1
Public Const REG_LEGAL_CHANGE_FILTER = (REG_NOTIFY_CHANGE_NAME Or REG_NOTIFY_CHANGE_ATTRIBUTES Or REG_NOTIFY_CHANGE_LAST_SET Or REG_NOTIFY_CHANGE_SECURITY)
Public Const REG_LEGAL_OPTION = (REG_OPTION_RESERVED Or REG_OPTION_NON_VOLATILE Or REG_OPTION_VOLATILE Or REG_OPTION_CREATE_LINK Or REG_OPTION_BACKUP_RESTORE)

Type CPU
    ProcessorNameString As String
    VendorIdentifier As String
    Identifier As String
    MHz As String
End Type

Public CPU As CPU
Private Count(100) As Long 'counter for keeping track of location in registry

Private lhRemoteRegistry As Long

Function ReadRemoteReg(ByVal KeyRoot As Long, _
    ByVal sRegPath As String, ByVal sValueName) As String
    Dim hKey As Long
    Dim KeyValType As Long
    Dim KeyValSize As Long
    Dim KeyVal As String
    Dim tmpVal As String
    Dim res As Long
    Dim i As Integer
    Dim iChar As Integer
    Dim sChar, sWorkStr As String
    Dim bUseZero As Boolean
    Dim lReturnCode, lHive
    
  
    'open the specified key
    res = RegOpenKeyEx(lhRemoteRegistry, sRegPath, 0, KEY_READ, hKey)
    
    'check for errors
    If res <> 0 Then GoTo Errore
    
    'fill buffer
    tmpVal = String(1024, 0)
    
    KeyValSize = 1024
    
    'get the value of the specified key
    res = RegQueryValueEx(hKey, sValueName, 0, KeyValType, ByVal tmpVal, KeyValSize)
    
    'check for errors
    If res <> 0 Then GoTo Errore
    
    'properly format data received
    Select Case KeyValType
    Case REG_SZ
        'remove trailing chr(0)
        tmpVal = Left(tmpVal, InStr(1, tmpVal, Chr(0), vbTextCompare) - 1)
        KeyVal = tmpVal
    Case REG_DWORD
        bUseZero = False
        ' format of keys in tmpVal :
        ' e.g. in registry : (hex) : 40001  ==> reads : 4 0 1 (meaning : 04 00 01)
        ' e.g. in registry : (hex) : 4000f  ==> reads : 4 0 15 (meaning : 04 00 f)
        ' e.g. in registry : (hex) : 121326 ==> reads : 18 19 38 (meaning : 12 13 26)
        sWorkStr = ""
        For i = Len(tmpVal) To 1 Step -1
            'check each code, get asci an convert to hex. You should have 2 digits
            iChar = Asc(Mid(tmpVal, i, 1))
            If iChar <> 0 Then
                bUseZero = True
            End If
            If bUseZero = True Then
                'make sure you have 2 digits (add extra 0 if necessary)
                If Len(Hex(iChar)) = 2 Then
                    ' no need to add an extra 0
                    sWorkStr = sWorkStr & Hex(iChar)
                Else
                    sWorkStr = sWorkStr & "0" & Hex(iChar)
                End If
            End If
        Next
        ' remove the leading 0: and add &h so you know it is hex
        If Left(sWorkStr, 1) = "0" Then
            sWorkStr = Right(sWorkStr, Len(sWorkStr) - 1)
        End If
        'if you want to know the value is stored as hex, use:
        'KeyVal = "&h" & sWorkStr
        'otherwise
        KeyVal = sWorkStr
    
    Case REG_MULTI_SZ
        tmpVal = Left(tmpVal, InStr(1, tmpVal, Chr(0), vbTextCompare) - 1)
        KeyVal = tmpVal
    End Select
    
    ReadRemoteReg = KeyVal
    
    'close the current key
    RegCloseKey hKey
    Exit Function
Errore:
    ReadRemoteReg = ""
    RegCloseKey hKey
    
End Function



Public Function GetComputerInfo() As Long
Dim HSPath As String, CPUPath As String

HSPath = "HARDWARE\Description\System"
CPUPath = HSPath & "\CentralProcessor\0"


    With CPU
        .ProcessorNameString = ReadRemoteReg(HKEY_LOCAL_MACHINE, CPUPath, "ProcessorNameString")
        .VendorIdentifier = ReadRemoteReg(HKEY_LOCAL_MACHINE, CPUPath, "VendorIdentifier")
        .Identifier = ReadRemoteReg(HKEY_LOCAL_MACHINE, CPUPath, "Identifier")
        'mhz is reported in hex, this converts it to decimal
        .MHz = CLng("&H" & ReadRemoteReg(HKEY_LOCAL_MACHINE, CPUPath, "~Mhz"))

    End With
End Function
Public Function GetCompName() As String

Dim dwLen As Long
Dim strString As String
    
'Create a buffer
dwLen = MAX_COMPUTERNAME_LENGTH + 1
strString = String(dwLen, "X")
    
'Get the computer name
GetComputerName strString, dwLen
    
'get only the actual data
ComputerName = Left(strString, dwLen)
GetCompName = ComputerName
End Function
Public Function OpenRegistry(CompName As String) As Long

'connect to remote registry
lReturnCode = RegConnectRegistry(CompName, HKEY_LOCAL_MACHINE, lhRemoteRegistry)
    
If lReturnCode <> 0 Then
    MsgBox "Nu m-am putut conecta la registrii calculatorului " & CompName
    OpenRegistry = 1
Else
    OpenRegistry = 0
End If
End Function


