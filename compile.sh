cd source 
#gfortran *.f -o /home/jimmy/programs/SUTRA_3_0/bin/sutra
gfortran --std legacy -c lmods_3_0.f #-o lmods_3_0.o
gfortran --std legacy -c fmods_3_0.f #-o fmods_3_0.o
gfortran --std legacy *.o -c lsubs_3_0.f #-o lsubs_3_0.o
gfortran --std legacy -c ssubs_3_0.f #-o ssubs_3_0.o   
gfortran --std legacy -c usubs_3_0.f #-o usubs_3_0.o
gfortran --std legacy *.o sutra_3_0.f -o ../bin/sutra
rm *.mod 
rm *.o 
#keywords: fmods_3_0.f  lmods_3_0.f  lsubs_3_0.f  ssubs_3_0.f  sutra_3_0.f  usubs_3_0.f legacy f95 

