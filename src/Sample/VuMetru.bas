Attribute VB_Name = "VuMetru"
'Main DirectX & DirectSound Objects + BufferInfo Structures
Public DX7 As New DirectX7, DS As DirectSound
Public BufDesc As DSBUFFERDESC, PCM As WAVEFORMATEX, pcm2 As WAVEFORMATEX

'Primary Buffer Object
Public PBuff As DirectSoundBuffer, PDesc As DSBUFFERDESC
Public DSBuffer As DirectSoundBuffer
Public curs As DSCURSORS, ByteArray() As Byte, FL As Long, ST As Long, LastVal As Integer, val As Integer
Declare Function timeGetTime Lib "winmm.dll" () As Long

Public Sub Initialize_Engine()
Set DS = DX7.DirectSoundCreate("") 'Create the DirectSound Object
DS.SetCooperativeLevel Form1.hWnd, DSSCL_EXCLUSIVE 'Set the Cooperative Level

'Fill the buffer info structures. (format & description)
PCM.nSize = LenB(PCM)
PCM.nFormatTag = WAVE_FORMAT_PCM
PCM.nChannels = 1
PCM.lSamplesPerSec = 44100
PCM.nBitsPerSample = 16
PCM.nBlockAlign = PCM.nBitsPerSample / 8 * PCM.nChannels
PCM.lAvgBytesPerSec = PCM.lSamplesPerSec * PCM.nBlockAlign
BufDesc.lFlags = DSBCAPS_CTRLVOLUME Or DSBCAPS_CTRLFREQUENCY Or DSBCAPS_STATIC 'No need to set the buffer size.

'Create Primary Buffer
PDesc.lFlags = DSBCAPS_CTRLVOLUME Or DSBCAPS_PRIMARYBUFFER
Set PBuff = DS.CreateSoundBuffer(PDesc, pcm2)
PBuff.SetFormat PCM
End Sub

Public Sub Terminate_Engine() 'Clear buffers from memory &
                              'Kill DirectX Objects

Set DSBuffer = Nothing
Set PBuff = Nothing
Set DS = Nothing
Set DX7 = Nothing
End Sub

Public Sub OpenFile(FileName As String)
FL = FileLen(FileName)
ReDim ByteArray(FL - 44)
Set DSBuffer = DS.CreateSoundBufferFromFile(FileName, BufDesc, PCM)
DSBuffer.ReadBuffer curs.lPlay, 0, ByteArray(0), DSBLOCK_ENTIREBUFFER

'Open FileName For Binary As #1
'Get #1, 44, ByteArray()
'Close #1
End Sub

Sub Play()
On Error Resume Next
DSBuffer.Play DSBPLAY_DEFAULT

While DSBuffer.GetStatus = DSBSTATUS_PLAYING ': DoEvents
DSBuffer.GetCurrentPosition curs


LastVal = (Abs(ByteArray(curs.lPlay) - 127) / 127) * 10
val = Form1.vLED1.Value

If LastVal > val Then
If LastVal - val < 4 Then
Form1.vLED1.Value = val + 1
Form1.hLED1.Value = val + 1
Form1.Peak1.Value = val + 1
Form1.Peak2.Value = val + 1
Else
Form1.vLED1.Value = val + 3
Form1.hLED1.Value = val + 3
Form1.Peak1.Value = val + 3
Form1.Peak2.Value = val + 3
End If
Else
If val - LastVal < 4 Then
Form1.vLED1.Value = val - 1
Form1.hLED1.Value = val - 1
Form1.Peak2.Value = val - 1
Else
Form1.vLED1.Value = val - 3
Form1.hLED1.Value = val - 3
Form1.Peak1.Value = val - 3
Form1.Peak2.Value = val - 3
End If
End If


ST = timeGetTime: While timeGetTime < ST + 25: DoEvents: Wend
Wend
While Not Form1.vLED1.Value = 0: DoEvents
Form1.vLED1.Value = Form1.vLED1.Value - 1
Form1.hLED1.Value = Form1.hLED1.Value - 1
Form1.Peak1.Value = Form1.Peak1.Value - 1
Form1.Peak2.Value = Form1.Peak2.Value - 1
ST = timeGetTime: While timeGetTime < ST + 75: DoEvents: Wend
Wend
End Sub

