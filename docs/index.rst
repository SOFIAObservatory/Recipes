SOFIA Data Analysis Cookbooks
=============================

|Python package|

**Aim**: These documents provide simple recipes (i.e., descriptions
and guided examples) for common data analysis objectives using SOFIA
processed data.

**Skill level**: These are generally written for a graduate student
audience. Some of the recipes are ``jupyter`` notebooks designed for a
researcher with a working knowledge of the `numpy/scipy/matplotlib
stack <https://scipy.org/install.html>`__ as well the
`astropy <http://docs.astropy.org/en/stable/>`__ modules.

**Contact us**: For questions not addressed in these notebooks or the
SOFIA handbooks, please contact us at the sofia_help@sofia.usra.edu.

**Feedback**: We also encourage you to submit any comments or
suggestions on these notebooks through a new Github
“`Issue <https://github.com/SOFIAObservatory/Recipes/issues/new/choose>`__”.

**Contribute**: If you have some code that you think other SOFIA users might be interested in, please contact us!!!

Recipes
---------

+-------------------------------------------+------------------------------------------------------------------------+
| **Python**                                | **Description**                                                        |
+-------------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Grism Inspection`_              | *Aim*: Inspection of FORCAST grism data.                               |
|                                           |                                                                        |
|                                           | *Tools*: astropy, DS9                                                  |
+-------------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Grism Line Analysis`_           | *Aim*: Basic line fluxes and line fitting of grism data.               |
|                                           |                                                                        |
|                                           | *Tools*: astropy                                                       |
+-------------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Grism Custom Extraction`_       | *Aim*: Extract grism data with a user-defined aperture.                |
|                                           |                                                                        |
|                                           | *Tools*: astropy                                                       |
+-------------------------------------------+------------------------------------------------------------------------+
| `HAWC+: Data Inspection`_                 | *Aim*: Basic inspection and analysis.                                  |
|                                           |                                                                        |
|                                           | *Tools*: astropy                                                       |
+-------------------------------------------+------------------------------------------------------------------------+
| `EXES: Data Inspection`_                  | *Aim*: Basic inspection and plotting spectra.                          |
|                                           |                                                                        |
|                                           | *Tools*: astropy                                                       |
+-------------------------------------------+------------------------------------------------------------------------+
| `EXES: Telluric Correction`_              | *Aim*: Model and remove atmosphere using PSG model.                    |
|                                           |                                                                        |
|                                           | *Tools*: astropy, PSG                                                  |
+-------------------------------------------+------------------------------------------------------------------------+
| `GREAT: Data Inspection (python)`_        | *Aim*: How to view GREAT spectra.                                      |
|                                           |                                                                        |
|                                           | *Tools*: astropy                                                       |
+-------------------------------------------+------------------------------------------------------------------------+
|                                           |                                                                        |
+-------------------------------------------+------------------------------------------------------------------------+
| **Other**                                 | **Description**                                                        |
+-------------------------------------------+------------------------------------------------------------------------+
| `SOFIA: data retrieval`_                  | *Aim*: Download SOFIA data through the IRSA.                           |
+-------------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Photometry (detailed)`_         | *Aim*: Detailed description of aperture photometry.                    |
+-------------------------------------------+------------------------------------------------------------------------+
| `FIFI-LS: Cube Analysis`_                 | *Aim*: Basic cube analysis.                                            |
|                                           |                                                                        |
|                                           | *Tools*: SOSPEX                                                        |
+-------------------------------------------+------------------------------------------------------------------------+
| `GREAT: Data Inspection (CLASS)`_         | *Aim*: How to view GREAT spectra.                                      |
|                                           |                                                                        |
|                                           | *Tools*: CLASS                                                         |
+-------------------------------------------+------------------------------------------------------------------------+

.. _`FORCAST: Basic Photometry`: FORCAST-Basic_Photometry.html
.. _`FORCAST: Photometry (detailed)`: FORCAST-photometry_detailed.ipynb
.. _`FORCAST: Grism Inspection`: FORCAST-Grism_Inspection-1.html
.. _`FORCAST: Grism Line Analysis`: FORCAST-Grism_LineAnalysis-2.html
.. _`FORCAST: Grism Custom Extraction`: FORCAST-Grism_CustomExtraction-3.html
.. _`HAWC+: Data Inspection`: HAWC_30_Dor.html
.. _`EXES: Data Inspection`: EXES-Data-Inspection.ipynb
.. _`EXES: Telluric Correction`: EXES-Telluric-Correction.ipynb
.. _`SOFIA: data retrieval`: SOFIA_data_retrieval.html
.. _`FIFI-LS: Cube Analysis`: FIFI-LS_sospex.ipynb
.. _`GREAT: Data Inspection (CLASS)`: GREAT-Class_primer.ipynb
.. _`GREAT: Data Inspection (python)`: GREAT-data-inspection.ipynb

.. |Python package| image:: https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml/badge.svg
   :target: https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml

.. toctree::
  :caption: Recipes
  :hidden:
  :maxdepth: 1

  general.rst
  forcast.rst
  hawc+.rst
  exes.rst
  great.rst
  fifi-ls.rst

.. toctree::
    :caption: Quick Links
    :hidden:
    :maxdepth: 1

    SOFIA Data Analysis <https://www.sofia.usra.edu/data/data-analysis>
    Cookbook Github Repository <https://github.com/SOFIAObservatory/Recipes>
    Data Archive <https://irsa.ipac.caltech.edu/Missions/sofia.html>
    Help-Desk <sofia_help@sofia.usra.edu>
