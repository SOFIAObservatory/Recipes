# SOFIA Cookbook Recipes

These documents provide simple "recipes" (i.e., descriptions and guided examples) for common data analysis objectives using SOFIA processed data. They are generally written for a graduate student audience and are intended to be used with the [SOFIA Data Handbooks](https://www.sofia.usra.edu/science/proposing-and-observing/data-products/data-resources).

The recipes are all `jupyter` notebooks designed for a researcher with a working knowledge of the [numpy/scipy/matplotlib stack](https://scipy.org/install.html) as well the [astropy](http://docs.astropy.org/en/stable/) modules.

The first notebook in the series walks the user through using the [SOFIA Data Cycle System (DCS)](https://dcs.sofia.usra.edu/) and will guide the reader through downloading a public data set on 30 Doradus with a walkthrough of basic analysis techniques with `python`.

## [30 Doradus/HAWC+ Cookbook](https://github.com/SOFIAObservatory/Recipes/blob/master/HAWC_30Dor.ipynb)

SOFIA performed far-infrared imaging polarimetric observations of [30 Doradus](https://www.sofia.usra.edu/multimedia/science-results-archive/sofia-reveals-never-seen-magnetic-field-details) using the High-resolution Airborne Wideband Camera-plus (HAWC+) at 53, 89, 154, and 214 micron. We present the status and quality of the observations, an overview of the SOFIA data products, and examples of working with HAWC+ polarimetric data that will enhance the scientific analysis of this, and future, data sets. These observations illustrate the potential influence of magnetic fields and turbulence in a star-forming region within the Tarantula Nebula.

The notebook can be downloaded from the repository above, or rendered online at:

https://nbviewer.jupyter.org/github/SOFIAObservatory/Recipes/blob/master/HAWC_30Dor.ipynb

## [FORCAST: Basic Photometry](LINK TBD)

This cookbook describes the basic process for aperture photometry using Level 3 (flux calibrated) FORCAST images. 
Contents:
- INTRODUCTION & INGREDIENTS
- INSPECTING THE IMAGE
- APERTURE PHOTOMETRY
- COLOR CORRECTION
- FORCAST PSF FITTING
- CROWDED FIELDS AND BACKGROUND EMISSION


## [FORCAST Grism: Inspection and Assessment Recipe](https://github.com/SOFIAObservatory/Recipes/blob/master/FORCAST-Grism_Inspection.ipynb)

This recipe provides an overview and sample code (in Python) for plotting and assessing FORCAST grism data.  
Contents:
- Viewing the FITS header
- Slit Orientation on the Sky
- Reading the File and Loading the Data into a Table Structure
- Plotting Spectra
- Masking Regions with Strong Telluric Features
- Plotting the Complete SED
- Calibration Using Independant Photometry
- Converting to λFλ

The notebook can be downloaded from the repository above, or rendered online at:

https://nbviewer.jupyter.org/github/SOFIAObservatory/Recipes/blob/master/FORCAST-Grism_Inspection.ipynb

## [FORCAST Grism: Custom Extraction Recipe](https://github.com/SOFIAObservatory/Recipes/blob/master/FORCAST-Grism_CustomExtraction.ipynb)

This recipe provides an overview and sample code (in Python) for custom spectral extractions from the LEVEL_2 2-D rectified images produced by the FORCAST pipeline. We recommend that the user reviews the first FORCAST Grism Recipe (FORCAST Grism Recipe: Basic Inspection and Assessment) before proceeding with this slightly more advanced tutorial.  
Contents:
- Inspecting the Extraction Aperture¶
- Custom Extractions

The notebook can be downloaded from the repository above, or rendered online at:

https://nbviewer.jupyter.org/github/SOFIAObservatory/Recipes/blob/master/FORCAST-Grism_CustomExtraction.ipynb

## [FORCAST Grism: Basic Line Analysis](https://github.com/SOFIAObservatory/Recipes/blob/master/FORCAST-Grism_CustomExtraction.ipynb)

This recipe provides an overview and sample python code for basic spectral (emission) line analysis. We recommend that the user reviews the first FORCAST Grism Recipe (FORCAST Grism Recipe: Basic Inspection and Assessment) before proceeding with this slightly more advanced tutorial.  
Contents:
- Cleaning the Data
- Fitting the Continuum Across the Grism
- Measuring Line Flux
- Line Fitting

The notebook can be downloaded from the repository above, or rendered online at:

https://nbviewer.jupyter.org/github/SOFIAObservatory/Recipes/blob/master/FORCAST-Grism_LineAnalysis.ipynb


## [FIFI-LS: Basic Cube Analysis using SOSPEX](LINK TBD)

This data analysis recipe describes basic spectroscopic cube analysis using the SOFIA
SPecturm Explorer (SOSPEX), a python tool written and maintained at the SOFIA
Science Center by FIFI-LS pipeline scientist Dr. Dario Fadda (https://github.com/SOFIAObservatory/sospex).
Contents:
- INTRODUCTION & INGREDIENTS
- INSPECTING THE CUBE
- COMPARING TO A REFERENCE IMAGE
- REFERENCE VELOCITY AND REDSHIFT
- TRIMMING, CROPPING, AND MASKING
- WORKING WITH APERTURES
- FITTING THE CONTINUUM
- CALCULATING LINE INTENSITY AND VELOCITY MOMENTS

## [GREAT: How to view GREAT spectra using CLASS](LINK TBD)

This recipe is a beginner’s introduction to plotting GREAT spectra using the class utility, which is part of the GILDAS package developed by IRAM and now the standard for single-dish heterodyne spectroscopy data reduction. 
