@Echo Off
FOR %%C IN (*.bcsar) DO tools\Wii3DSUSoundTool.exe %%C
FOR %%C IN (*.csar) DO tools\Wii3DSUSoundTool.exe %%C
echo put all bcseq and txt archives in root folder (the one with the bcsar files in it) and put the bcwav files in the bcwav folder
PAUSE
FOR %%C IN (*.bcseq) DO tools\cseq2midi.exe %%C
FOR %%C IN (*.cseq) DO tools\cseq2midi.exe %%C
DEL cseq2midi.log.txt
cd C:\Users\Your username here\Desktop\bcsar2midi\tools
VGAudioCli -b -i C:\Users\Your username here\Desktop\bcsar2midi\bcwav -o C:\Users\Your username here\Desktop\bcsar2midi --out-format wav
cd C:\Users\Your username here\Desktop\bcsar2midi
FOR %%C IN (*.txt) DO tools\sf2comp c "%%C"
DEL *.txt
DEL *.bcseq
DEL *.wav
cd C:\Users\Your username here\Desktop\bcsar2midi\bcwav
DEL *.bcwav
echo The extraction process is complete! Make sure to edit the samples in the soundfont as they are not looped. Looping the samples will result in a higher quality rip. Thanks for using this tool!
PAUSE
EXIT


