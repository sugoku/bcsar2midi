FOR %%C IN (*.cia) DO call extract_bcsar_from_cia.bat "%%C"
FOR %%C IN (*.bcsar) DO (
    call convert_bcsar_to_midisf2.bat "%%C"
    cd %~dp0
    mkdir %%~nC
    move %%C %%~nC\%%C
    FOR %%M IN (*.mid) DO (
        move %%M %%~nC\%%M
    )
    FOR %%S IN (*.sf2) DO (
        move %%S %%~nC\%%S
    )
)