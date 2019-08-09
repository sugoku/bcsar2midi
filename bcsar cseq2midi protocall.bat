@Echo Off
FOR %%C IN (*.bcsar) DO tools\Wii3DSUSoundTool.exe %%C
FOR %%C IN (*.csar) DO tools\Wii3DSUSoundTool.exe %%C
echo put all bcseq and txt archives in root folder (the one with the bcsar files in it) and put the bcwav files in the bcwav folder
PAUSE
FOR %%C IN (*.bcseq) DO tools\cseq2midi.exe %%C
FOR %%C IN (*.cseq) DO tools\cseq2midi.exe %%C
DEL cseq2midi.log.txt
cd C:\Users\Your username here\Desktop\bcsar2midi\tools
vgconvert.bat

