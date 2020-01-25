@Echo Off
FOR %%C IN (*.bcsar) DO tools\Wii3DSUSoundTool.exe %%C
FOR %%C IN (*.csar) DO tools\Wii3DSUSoundTool.exe %%C
echo put all bcseq and txt archives in root folder (the one with the bcsar files in it) and put the bcwav files in the bcwav folder
PAUSE
FOR %%C IN (*.bcseq) DO tools\cseq2midi.exe %%C
FOR %%C IN (*.cseq) DO tools\cseq2midi.exe %%C
DEL cseq2midi.log.txt
cd C:\Users\%USERNAME%\Desktop\bcsar2midi\bcwav
FOR %%a IN (*.bcwav) DO tools\test.exe -o  "%%~na.wav" -L "%%a"
move *.wav C:\Users\%USERNAME%\Desktop\bcsar2midi
cd C:\Users\%USERNAME%\Desktop\bcsar2midi
FOR %%C IN (*.txt) DO tools\sf2comp c "%%C"
echo Pressing a key will delete all files used to create the midi files and soundfonts. (.txt,.bcseq,.cseq,.wav,.bcwav).
PAUSE
DEL *.txt
DEL *.bcseq
DEL *.cseq
DEL *.wav
cd C:\Users\%USERNAME%\Desktop\bcsar2midi\bcwav
DEL *.bcwav
echo The extraction process is complete! Thanks for using this tool!
PAUSE
EXIT


