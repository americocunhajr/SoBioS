# SoBioS - Sobol indices for Biological Systems

![SoBioS Logo](logo/SoBioS_logo.png)

**SoBioS** is an easy to run Matlab code used for Sobol' indices global sensitivity analysis of Biological Systems. It strongly uses the utilities available in the UQLab package (https://www.uqlab.com/). The implementation follows an educational style, to make its use very intuitive, in the same style that can be seen in UQLab tutorials.


The **SoBioS** code consists of the following modules:

SoBioS_CaseName.m - main file for the simulation (use servaral resourses from UQLab package);

QoI_CaseName.m    - function to compute the Quantity of Interest (QoI). If your system is very complex, we recommend creating a separate file for the system equations



## UQLab dependency

In order to use the **SoBioS** code, it is necessary to have UQLab package installed:
https://www.uqlab.com

This external package is free for academic use.

## Support

A tutotial for the **SoBioS** packages is provided in the following book chapter:

Michel Tosin, Adriano Côrtes, Americo Cunha Jr, A Tutorial on Sobols' Global Sensitivity Analysis Applied to Biological Models, 2020

## Authors:

Michel Tosin (UERJ) - https://www.researchgate.net/profile/Michel_Tosin

Adriano Cortês (UFRJ) - https://www.researchgate.net/profile/Adriano_Cortes

Americo Cunha (UERJ) - www.americocunha.org

## Citing SoBioS:

We kindly ask users to cite the following reference in any publications reporting work done with **SoBioS**:

Michel Tosin, Adriano Côrtes, Americo Cunha Jr, A Tutorial on Sobols' Global Sensitivity Analysis Applied to Biological Models, 2020

## License

**SoBioS** is released under the MIT license. See the LICENSE and NOTICE files for details. All new contributions must be made under the MIT license.
