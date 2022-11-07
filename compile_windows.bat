cd source && ^
gfortran --std legacy -c lmods_3_0.f && ^
gfortran --std legacy -c fmods_3_0.f && ^
gfortran --std legacy *.o -c lsubs_3_0.f && ^
gfortran --std legacy -c ssubs_3_0.f  && ^
gfortran --std legacy -c usubs_3_0.f && ^
gfortran -static --std legacy *.o sutra_3_0.f -o ../bin/sutra.exe && ^
del *.mod && ^
del *.o && ^
cd .. 

