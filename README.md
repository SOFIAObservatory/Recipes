# SOFIA Data Analysis Tutorials

[repo]:s-goldman

[![Python package](https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml/badge.svg)](https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml)

**Aim**: These documents provide simple "recipes" (i.e., descriptions and guided examples) for common data analysis objectives using SOFIA processed data.

**Skill level**: These are generally written for a graduate student audience. Some of the recipes are `jupyter` notebooks designed for a researcher with a working knowledge of the [numpy/scipy/matplotlib stack](https://scipy.org/install.html) as well the [astropy](http://docs.astropy.org/en/stable/) modules.

**Contact us**: For questions not addressed in these notebooks or the SOFIA handbooks, please contact us at the
[sofia_help@sofia.usra.edu](mailto:sofia_help@sofia.usra.edu).

**Feedback**: We also encourage you to submit any comments or suggestions on these notebooks through a new Github "[Issue](https://github.com/SOFIAObservatory/Recipes/issues/new/choose)".

**Resources**: [SOFIA Data Handbooks](https://www.sofia.usra.edu/science/proposing-and-observing/data-products/data-resources)


## Tutorials

| PDFs | Description |
| :--- | :---  |
| [FORCAST][forcast] | <span style="color:#970505;">Aim</span>: Discuss the process of aperture photometry with FORCAST data. <br /> |
| [FIFI-LS][fifi-ls] | <span style="color:#970505;">Aim</span>: Basic cube analysis. <br /> <span style="color:#970505;">Tools</span>: [SOSPEX][sospex] <br /> |
| [GREAT][great] | <span style="color:#970505;">Aim</span>: How to view GREAT spectra. <br /> <span style="color:#970505;">Tools</span>: [CLASS][sospex] <br /> |



## Jupyter Notebooks

| Notebooks | Description |
| :--- | :---  |
| [SOFIA: data retrieval][isra_nb] | <span style="color:#970505;">Aim</span>: Download SOFIA data through the Infrared Science Archive ([IRSA][isra]).<br /> |
| [FORCAST: Basic Photometry][forcast_photometry_nb] |  <span style="color:#970505;">Aim</span>: Simple aperture photometry and uncertainty calculation. <br /> <span style="color:#970505;">Tools</span>: astropy, photutils |
| [FORCAST: Grism Inspection][forcast_1_nb] |  <span style="color:#970505;">Aim</span>: Inspection of FORCAST grism data. <br /> <span style="color:#970505;">Tools</span>: astropy, DS9 |
| [FORCAST: Grism Line Analysis][forcast_2_nb] |  <span style="color:#970505;">Aim</span>: Basic line fluxes and line fitting of grism data. <br /> <span style="color:#970505;">Tools</span>: astropy |
| [FORCAST: Grism Custom Extraction][forcast_3_nb] |  <span style="color:#970505;">Aim</span>: Extract grism data with a user-defined aperture. <br /> <span style="color:#970505;">Tools</span>: astropy |
| [HAWC+ Data Inspection][hawc_nb] |  <span style="color:#970505;">Aim</span>: Basic inspection and analysis. <br /> <span style="color:#970505;">Tools</span>: astropy |
| [GREAT: Data Inspection][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Tools</span>: astropy |
| [GREAT: Data Analysis][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br />  <span style="color:#970505;">Tools</span>: astropy |
| [EXES: Data Inspection][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Tools</span>: astropy |
| [EXES: Data Analysis][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Tools</span>: astropy |


<!--  <span style="color:#970505;">Data</span>: 30 Doradus  -->
[forcast]:https://github.com/s-goldman/Recipes/blob/main/FORCAST_Photometry.pdf
[fifi-ls]:https://github.com/s-goldman/Recipes/blob/main/FIFI-LS_CubeAnalysis.pdf
[great]:https://github.com/s-goldman/Recipes/blob/main/GREAT_CLASSPrimer.pdf
[isra_nb]:https://github.com/s-goldman/Recipes/blob/main/SOFIA/SOFIA_data_retrieval.ipynb
[forcast_photometry_nb]:https://github.com/s-goldman/Recipes/blob/main/FORCAST/FORCAST-basic_photometry.ipynb
[forcast_1_nb]:https://github.com/s-goldman/Recipes/blob/main/FORCAST/FORCAST-Grism_Inspection-1.ipynb
[forcast_2_nb]:https://github.com/s-goldman/Recipes/blob/main/FORCAST/FORCAST-Grism_LineAnalysis-2.ipynb
[forcast_3_nb]:https://github.com/s-goldman/Recipes/blob/main/FORCAST/FORCAST-Grism_CustomExtraction-3.ipynb
[hawc_nb]:https://github.com/s-goldman/Recipes/blob/main/HAWC/HAWC_30_Dor.ipynb
[sospex]:https://github.com/darioflute/sospex
[class]:https://www.iram.fr/IRAMFR/GILDAS/
[isra]:https://irsa.ipac.caltech.edu/Missions/sofia.html
[under_development]:https://github.com/s-goldman/Recipes
