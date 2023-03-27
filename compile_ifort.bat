cd source && ^
ifort -c lmods_3_0.f && ^
ifort -c fmods_3_0.f && ^
ifort *.obj -c lsubs_3_0.f && ^
ifort -c ssubs_3_0.f  && ^
ifort -c usubs_3_0.f && ^
ifort -static *.obj sutra_3_0.f -o ../bin/sutra.exe && ^
del *.mod && ^
del *.obj && ^
cd .. 

