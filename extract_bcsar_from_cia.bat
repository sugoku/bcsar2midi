tools\ctrtool.exe --contents=contents %1
for %%x in (contents.0000.*) do tools\ctrtool.exe --exheader=exheader.bin --exefsdir=exefs --romfsdir=romfs --logo=logo.bcma.lz --plainrgn=plain.bin %%x
for /r . %%x in (*.bcsar) do move "%%x" .
rmdir /s/q romfs
rmdir /s/q exefs
DEL contents.*.*
DEL exheader.bin
DEL logo.bcma.lz
DEL plain.bin