# SoBioS - Sobol indices for Biological Systems

SoBioS is an easy to run Matlab code used for Sobol' indices global sensitivity analysis of Biological Systems. It strongly uses the utilities available in the UQLab package (https://www.uqlab.com/). The implementation follows an educational style, to make its use very intuitive, in the same style that can be seen in UQLab tutorials.


The SoBioS code consists of the following modules:

SoBioS.m - the main file where are defined all the details for the simulation and where the UQLab packages are called  

QoI.m    - a function to compute the Quantity of Interest (QoI)

valplot.m - as the UQLab don't have a simple command to plot validation plots (in the best of our knowgedge), this routine               perform the validation and error's plots 

## UQLab dependency

In order to use the SoBioS code, it is necessary to have UQLab package installed:
https://www.uqlab.com

This external package is free for academic use.

## Support

Full user guides for SoBioS packages are provided in the doc directory along with documentation for example programs.

## Authors:

Adriano Cortês (UFRJ)

Michel Tosin (UERJ)

Americo Cunha (UERJ)

www.americocunha.org

## Citing SoBioS:

We ask users of SoBioS to cite the following book chapter in any publications reporting work done with SoBioS:


## License

SoBioS is released under the MIT license. See the LICENSE and NOTICE files for details. All new contributions must be made under the MIT license.
