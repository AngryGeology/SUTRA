cd source && ^
ifx -c lmods_3_0.f && ^
ifx -c fmods_3_0.f && ^
ifx *.obj -c lsubs_3_0.f && ^
ifx -c ssubs_3_0.f  && ^
ifx -c usubs_3_0.f && ^
ifx -static *.obj sutra_3_0.f -o ../bin/sutra.exe && ^
del *.mod && ^
del *.obj && ^
cd .. 

