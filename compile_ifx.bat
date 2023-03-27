cd source && ^
ifx /Ot /Oa lmods_3_0.f /c && ^
ifx /Ot /Oa fmods_3_0.f /c && ^
ifx /Ot /Oa *.obj lsubs_3_0.f /c && ^
ifx /Ot /Oa ssubs_3_0.f /c && ^
ifx /Ot /Oa usubs_3_0.f /c && ^
ifx *.obj sutra_3_0.f /Ot /Oa /exe:../bin/sutra.exe && ^
del *.mod && ^
del *.obj && ^
cd .. 