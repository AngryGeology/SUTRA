cd source && ^
ifx lmods_3_0.f /c && ^
ifx fmods_3_0.f /c && ^
ifx *.obj lsubs_3_0.f /c && ^
ifx ssubs_3_0.f /c && ^
ifx usubs_3_0.f /c && ^
ifx *.obj sutra_3_0.f /exe:../bin/sutra.exe && ^
del *.mod && ^
del *.obj && ^
cd .. 

