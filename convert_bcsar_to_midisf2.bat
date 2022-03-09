@echo off
tools\Wii3DSUSoundTool.exe %1
for /r . %%x in (*.bcseq) do move "%%x" .
for /r . %%x in (*.txt) do move "%%x" .
for /r . %%x in (*.bcwav) do move "%%x" bcwav
FOR %%C IN (*.bcseq) DO tools\cseq2midi.exe %%C
FOR %%C IN (*.cseq) DO tools\cseq2midi.exe %%C
DEL cseq2midi.log.txt
cd %~dp0\bcwav
FOR %%a IN (*.bcwav) DO ..\tools\test.exe -o "%%~na.wav" -L "%%a"
move *.wav ..
cd ..
FOR %%C IN (*.txt) DO tools\sf2comp c "%%C"
rem echo Pressing a key will delete all files used to create the midi files and soundfonts. (.txt,.bcseq,.cseq,.wav,.bcwav).
rem PAUSE
for /d %%G in ("*.bcsar_ext") do rd /s /q "%%~G"
DEL *.txt
DEL *.bcseq
DEL *.cseq
DEL *.wav
cd %~dp0\bcwav
DEL *.bcwav
cd %~dp0