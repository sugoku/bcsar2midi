# cia-to-bcsar-to-midisf2

modified by @sugoku

extracts bcsar from cia and then converts to MIDI and soundfont! just run `extract_bcsar_from_cia.bat` then `convert_bcsar_to_midisf2.bat` with filename arguments.

`batch.bat` will go through every cia in the directory, extract the bcsars, run the process and put them in a new folder with the same name as the bcsar minus the file extension.

you'll probably need to create a folder `bcwav` if it doesn't exist yet

the programs used:
- vgaudio
- soneek's Wii3DSUSoundTool
- sf2comp
- cseq2midi
- ctrtool

notes:
- if it hangs, CTRL+C and when it asks to terminate batch processing, enter `n` (some sequences will cause this to happen)
- do not add \*.txt or \*.bcsar files in this directory or they will get moved around