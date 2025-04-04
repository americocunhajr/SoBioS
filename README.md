## Sobol' Indices for Biological Systems

**SoBioS: Sobol' Indices for Biological Systems** is an easy-to-use Matlab code designed for Sobol' indices-based global sensitivity analysis of biological systems. Developed with an educational approach, **SoBioS** is intuitive and user-friendly, making it an excellent tool for researchers and students in the field of systems biology.

<p align="center">
<img src="logo/SobolIndices.png" width="60%">
</p>

### Table of Contents
- [Overview](#overview)
- [Features](#features)
- [UQLab dependency](#uqlab-dependency)
- [Usage](#usage)
- [Documentation](#documentation)
- [Authors](#authors)
- [Citing SoBioS](#citing-sobios)
- [License](#license)
- [Institutional support](#institutional-support)
- [Funding](#funding)

### Overview
**SoBioS** was developed as a pedagogical tool to teach the basics of global sensitivity analysis of biological systems via Sobol' indices. A tutorial explaining the theory and practical aspects behind the **SoBioS** package is provided in the following book chapter:
- **M. Tosin, A.M.A. Côrtes, A. Cunha Jr**, *A Tutorial on Sobol’ Global Sensitivity Analysis Applied to Biological Models*, in Networks in Systems Biology: Applications for Disease Modeling, Computational Biology, vol. 32, Springer, Cham, 2020. <a href="https://doi.org/10.1007/978-3-030-51862-2_6" target="_blank">DOI</a>. 

### Features
- Global sensitivity analysis using Sobol' indices
- Easy-to-run Matlab implementation
- Educational style code for easy understanding
- Includes example cases and detailed comments

### UQLab dependency
In order to use the **SoBioS** code, it is necessary to have UQLab package installed:
<a href="https://www.uqlab.com" target="_blank">https://www.uqlab.com</a>. 

This external package is free for academic use.

### Usage
This package includes the following modules:
- SoBioS_CaseName.m - main file for the simulation (use servaral resourses from UQLab package);
- QoI_CaseName.m - function to compute the Quantity of Interest (QoI).

To get started with **SoBioS**, follow these steps:
1. Clone the repository:
   ```bash
   git clone https://github.com/americocunhajr/SoBioS.git
   ```
2. Navigate to the code directory:
   ```bash
   cd SoBioS/SoBioS-1.0
   ```
3. To run a simulation, execute the main file corresponding to your case:
   ```bash
   SoBioS_CaseName
   ```

### Documentation
The routines in SoBioS are well-commented to explain their functionality. Each routine includes a description of its purpose, as well as inputs and outputs. Detailed documentation can be found within the code comments and the provided tutorial.

### Authors
- Michel Tosin
- Adriano Côrtes
- Americo Cunha

### Citing SoBioS
If you use **SoBioS** in your research, please cite the following publication:
- *Tosin M., Côrtes A.M.A., Cunha A. (2020) A Tutorial on Sobol’ Global Sensitivity Analysis Applied to Biological Models. In: da Silva F.A.B., Carels N., Trindade dos Santos M., Lopes F.J.P. (eds) Networks in Systems Biology: Applications for Disease Modeling. Computational Biology, vol 32. Springer, Cham https://doi.org/10.1007/978-3-030-51862-2_6*

```
@incollection{Tosin2020SoBioS,
   author    = {M. Tosin and A. M. A. C\ˆ{o}rtes and A. {Cunha~Jr}},
   title     = {A {T}utorial on {S}obol’ {G}lobal {S}ensitivity {A}nalysis {A}pplied to {B}iological {M}odels},
   editor    = {F.A.B. {da Silva} and N. Carels and M. {Trindade dos Santos} and F.J.P. Lopes},
   booktitle = {Networks in Systems Biology: Applications for Disease Modeling},
   publisher = {Springer International Publishing},
   address   = {Cham},
   year      = {2020},
   pages     = {93-118},
   doi       = {https://doi.org/10.1007/978-3-030-51862-2_6},
}
```

### License

**SoBioS** is released under the MIT license. See the LICENSE file for details. All new contributions must be made under the MIT license.

<img src="logo/mit_license_red.png" width="10%"> 

### Institutional support

<img src="logo/logo_uerj.png" width="12%"> &nbsp; &nbsp; <img src="logo/logo_ufrj.png" width="8%">

### Funding

<img src="logo/faperj.png" width="20%"> &nbsp; &nbsp; <img src="logo/cnpq.png" width="20%"> &nbsp; &nbsp; <img src="logo/capes.png" width="10%">
