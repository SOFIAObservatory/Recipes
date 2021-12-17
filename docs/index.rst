SOFIA DATA Analysis Tutorials
=============================

|Python package|

**Aim**: These documents provide simple “recipes” (i.e., descriptions
and guided examples) for common data analysis objectives using SOFIA
processed data.

**Skill level**: These are generally written for a graduate student
audience. Some of the recipes are ``jupyter`` notebooks designed for a
researcher with a working knowledge of the `numpy/scipy/matplotlib
stack <https://scipy.org/install.html>`__ as well the
`astropy <http://docs.astropy.org/en/stable/>`__ modules.


Tutorials
---------

+---------------------------------------+------------------------------------------------------------------------+
| **Jupyter Notebook**                  | **Description**                                                        |
+---------------------------------------+------------------------------------------------------------------------+
| `SOFIA data retrieval`_               | **Aim**: Download SOFIA data through the IRSA.                         |
+---------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Basic Photometry`_          | **Aim**: Simple aperture photometry and uncertainty calculation.       |
|                                       |                                                                        |
|                                       | **Tools**: astropy, photutils                                          |
+---------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Photometry (detailed)`_     | **Aim**: Detailed description of aperture photometry.                  |
+---------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Grism Inspection`_          | **Aim**: Inspection of FORCAST grism data.                             |
|                                       |                                                                        |
|                                       | **Tools**: astropy, DS9                                                |
+---------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Grism Line Analysis`_       | **Aim**: Basic line fluxes and line fitting of grism data.             |
|                                       |                                                                        |
|                                       | **Tools**: astropy                                                     |
+---------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Grism Custom Extraction`_   | **Aim**: Extract grism data with a user-defined aperture.              |
|                                       |                                                                        |
|                                       | **Tools**: astropy                                                     |
+---------------------------------------+------------------------------------------------------------------------+
| `HAWC+ Data Inspection`_              | **Aim**: Basic inspection and analysis.                                |
|                                       |                                                                        |
|                                       | **Tools**: astropy                                                     |
+---------------------------------------+------------------------------------------------------------------------+
| `EXES: Data Inspection`_              | **Aim**: Basic inspection and plotting spectra                         |
|                                       |                                                                        |
|                                       | **Tools**: astropy                                                     |
+---------------------------------------+------------------------------------------------------------------------+

+----------------------------------+------------------------------------------------------------------------+
| **PDFs**                         | **Description**                                                        |
+----------------------------------+------------------------------------------------------------------------+
| `FIFI-LS`_                       | **Aim**: Basic cube analysis.                                          |
|                                  |                                                                        |
|                                  | **Tools**: SOSPEX                                                      |
+----------------------------------+------------------------------------------------------------------------+
| `GREAT`_                         | **Aim**: How to view GREAT spectra.                                    |
|                                  |                                                                        |
|                                  | **Tools**: CLASS                                                       |
+----------------------------------+------------------------------------------------------------------------+

**Contact us**: For questions not addressed in these notebooks or the
SOFIA handbooks, please contact us at the sofia_help@sofia.usra.edu.

**Feedback**: We also encourage you to submit any comments or
suggestions on these notebooks through a new Github
“`Issue <https://github.com/SOFIAObservatory/Recipes/issues/new/choose>`__”.

**Resources**: `SOFIA Data Handbooks <https://www.sofia.usra.edu/science/proposing-and-observing/data-products/data-resources>`__, `Github repository <https://github.com/SOFIAObservatory/Recipes>`__

.. _`SOFIA data retrieval`: SOFIA_data_retrieval.html
.. _`FORCAST: Basic Photometry`: FORCAST-Basic_Photometry.html
.. _`FORCAST: Photometry (detailed)`: FORCAST-photometry_detailed.ipynb
.. _`FORCAST: Grism Inspection`: FORCAST-Grism_Inspection-1.html
.. _`FORCAST: Grism Line Analysis`: FORCAST-Grism_LineAnalysis-2.html
.. _`FORCAST: Grism Custom Extraction`: FORCAST-Grism_CustomExtraction-3.html
.. _`HAWC+ Data Inspection`: HAWC_30_Dor.html
.. _`EXES: Data Inspection`: EXES-Data-Inspection.ipynb

.. _FIFI-LS: https://github.com/SOFIAObservatory/Recipes/blob/master/FIFI-LS_CubeAnalysis.pdf
.. _GREAT: https://github.com/SOFIAObservatory/Recipes/blob/master/GREAT_CLASSPrimer.pdf

.. |Python package| image:: https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml/badge.svg
   :target: https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml

Additional Links
******************

.. toctree::
  :maxdepth: 1

  SOFIA_data_retrieval.ipynb
  FORCAST-Basic_Photometry.ipynb
  FORCAST-photometry_detailed.ipynb
  FORCAST-Grism_Inspection-1.ipynb
  FORCAST-Grism_LineAnalysis-2.ipynb
  FORCAST-Grism_CustomExtraction-3.ipynb
  HAWC_30_Dor.ipynb
  EXES-Data-Inspection.ipynb
  pdf_tutorials
