cd source && ^
ifx /arch:CORE-AVX2 lmods_3_0.f /c && ^
ifx /arch:CORE-AVX2 fmods_3_0.f /c && ^
ifx /arch:CORE-AVX2 *.obj lsubs_3_0.f /c && ^
ifx /arch:CORE-AVX2 ssubs_3_0.f /c && ^
ifx /arch:CORE-AVX2 usubs_3_0.f /c && ^
ifx *.obj sutra_3_0.f /arch:CORE-AVX2 /exe:../bin/sutra.exe && ^
del *.mod && ^
del *.obj && ^
cd .. 

