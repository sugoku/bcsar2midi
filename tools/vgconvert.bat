VGAudioCli -b -i C:\Users\sgonzalez08\Desktop\bcsar2midi\bcwav -o C:\Users\sgonzalez08\Desktop\bcsar2midi --out-format wav
cd C:\Users\sgonzalez08\Desktop\bcsar2midi
FOR %%C IN (*.txt) DO tools\sf2comp c "%%C"
DEL *.txt
DEL *.bcseq
DEL *.wav
cd C:\Users\sgonzalez08\Desktop\bcsar2midi\bcwav
DEL *.bcwav
echo The extraction process is complete! Thanks for using this tool!
PAUSE
EXIT