# SOFIA Example Jupyter Notebooks -- Data Analysis Tools

[repo]:s-goldman

[![Python package](https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml/badge.svg)](https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml)

These documents provide simple "recipes" (i.e., descriptions and guided examples) for common data analysis objectives using SOFIA processed data. They are generally written for a graduate student audience and are intended to be used with the [SOFIA Data Handbooks](https://www.sofia.usra.edu/science/proposing-and-observing/data-products/data-resources).

Some of the recipes are `jupyter` notebooks designed for a researcher with a working knowledge of the [numpy/scipy/matplotlib stack](https://scipy.org/install.html) as well the [astropy](http://docs.astropy.org/en/stable/) modules.




| Notebook | Description |
| :--- | :---  |
| [SOFIA: data retrieval][isra_nb] | <span style="color:#970505;">Aim</span>: Download SOFIA data through the Infrared Science Archive ([IRSA](https://irsa.ipac.caltech.edu/Missions/sofia.html))<br /> |
| [FORCAST: Basic Photometry][forcast_photometry_nb] |  <span style="color:#970505;">Aim</span>: Simple aperture photometry and uncertainty calculation. <br /> <span style="color:#970505;">Data</span>: Symbiotic Mira, HM Sge <br /> <span style="color:#970505;">Tools</span>: astropy, photutils |
| [FORCAST: Grism Inspection][forcast_1_nb] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [FORCAST: Grism Line Analysis][forcast_2_nb] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [FORCAST: Grism Custom Extraction][forcast_3_nb] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [HAWC+ Data Inspection][forcast_notebook] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [FIF-LS: Cube inspection][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [FIF-LS: Cube Analysis][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [GREAT: Data Inspection][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [GREAT: Data Analysis][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [EXES: Data Inspection][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |
| [EXES: Data Analysis][under_development] |  <span style="color:#970505;">Aim</span>: Aperture photometry <br /> <span style="color:#970505;">Data</span>: Level 3 (flux calibrated) FORCAST images <br /> <span style="color:#970505;">Tools</span>: astropy |


<!--  <span style="color:#970505;">Data</span>: 30 Doradus  -->

[isra_nb]:https://github.com/s-goldman/Recipes/blob/master/FORCAST/FORCAST-Grism_Inspection-1.ipynb
[forcast_photometry_nb]:https://github.com/s-goldman/Recipes/blob/main/FORCAST/FORCAST-basic_photometry.ipynb
[forcast_1_nb]:https://github.com/s-goldman/Recipes/blob/main/FORCAST/FORCAST-Grism_Inspection-1.ipynb
[forcast_2_nb]:https://github.com/s-goldman/Recipes/blob/main/FORCAST/FORCAST-Grism_LineAnalysis-2.ipynb
[forcast_3_nb]:https://github.com/s-goldman/Recipes/blob/main/FORCAST/FORCAST-Grism_CustomExtraction-3.ipynb
[hawc_nb]:https://github.com/s-goldman/Recipes/blob/main/HAWC/HAWC_30_Dor.ipynb
[under_development]:https://github.com/s-goldman/Recipes
