# MODIFIED SUTRA 3.0 

This repo is an update to the SUTRA 3.0 hydrological modelling code written in Fortran 77. While the SUTRA 3.0 
code does not require any update, it has a limitation in that the unsaturated flow properties cannot be assigned 
dyanmically, rather they are allocated at compile time. This is not condusive to modern practices of sensitivity 
analysis and monte-carlo runs.  Hence in this update the code has been edited such that it allows for dynamic allocation 
of unsaturated hydrological properties following the van Genutchen school of thoughts when it comes to computing degree of 
saturation and relative hydrualic conductivity in unsaturated conditions. 

### usage 
To get started, on windows there is a statically compiled executable made using the recently released "ifx" compiler from
Intel. This version should work with modern Intel and AMD cpus. If using linux there is a bash script to compile the code 
using gfortran, there is also a statically compiled version of SUTRA for which should work on Debian based systems (unsure 
on other flavours of Linux).  

All documentation released for SUTRA 3.0 is valid for this version as well. However an extra file is required 
in the case that unsaturated conditions are present, see below. 

## param.vg 
If unsaturated conditions are present, then the following van Genutchen parameters file should be written to 
the SUTRA working directory, "param.vg". The first line of the file is an integer describing the zones in the 
model, NREGs. Each of the following lines then describe the parameters for the respective zone (identified by its 
NREG number in the SUTRA.inp file) as NREG, SWRES, SWSAT, AA, VN (seperated by tabs/spaces): where
- NREG is the zone number 
- SWRES is the residual saturation value 
- SWSAT is the maximum saturation value (normally 1.0 if working in terms of degree of saturation). 
- AA is the alpha value associated with the van Genutchen curve, it relates to air entry pressure
- VN is 'n' parameter used to fit a curve to lab data. 
	 
*The maximum number of zones allowable in this version of the code is 5*. The reason for this is that common 
(or global) arrays in FORTRAN 77 can't have a dynamic size at compile time, this approach of the common array was 
taken as it avoided heavier edits of the original SUTRA code. With that said, this author is open
to alternative suggestions on how best to approach the dynamic array issue in F77. 

### example
The contents of param.vg should look like this: 
```
4
1 0.157895 1.000000         0.000050 1.200000
2 0.208333 1.000000         0.000013 1.440000
3 0.037209 1.000000         0.000050 1.750000
4 0.208333 1.000000         0.000013 1.440000
```

## Licensing 
As per documentation on the original [download source for SUTRA 3.0](https://www.usgs.gov/software/sutra-a-model-2d-or-3d-saturated-unsaturated-variable-density-ground-water-flow-solute-or) this software is free to be modified and distributed. See quotation below: 

"As a work of the United States Government, this USGS product is in the public domain within the United States. You can copy, modify, distribute, and perform the work, even for commercial purposes, all without asking permission. Additionally, USGS waives copyright and related rights in the work worldwide through CC0 1.0 Universal Public Domain Dedication." 

## Known Issue
When the code is compiled with gfortran the code crashes once the SUTRA simulation has been run. This does not effect results as far as I can tell, so I'm unsure why 
this occurs. Therefore I am not addressing this issue at this time. 