## MODIFIED SUTRA 3.0 

This repo is an update to the SUTRA 3.0 hydrological modelling code written in Fortran 77. While the SUTRA 3.0 
code does not require any update, it has a limitation in that the unsaturated flow properties cannot be assigned 
dyanmically, rather they are allocated at compile time. This is not condusive to modern practices of sensitivity 
analysis and monte-carlo runs.  Hence in this update the code has been edited such that it allows for dynamic allocation 
of unsaturated hydrological properties following the van Genutchen school of thoughts when it comes to computing degree of 
saturation and relative hydrualic conductivity in unsaturated conditions. 

To use the code compile it with the attached bash script (windows compile not yet attempted). All documentation 
released for SUTRA 3.0 is valid for this version as well. However an extra file is required in the case that 
unsaturated conditions are present, see below. 

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
	 
*The maximum number of zones allowable in this version of the code is 100*. The reason for this is that common 
(or global) arrays in FORTRAN 77 can't have a dynamic size at compile time, this approach of the common array was 
taken as it avoided heavier edits of the original SUTRA code. With that said, this author is open
to alternative suggestions on how best to approach the dynamic array issue in F77. 
