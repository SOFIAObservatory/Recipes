.. meta::
   :google-site-verification: 7GOTuZ9YEFx8XNybN4_lipwNKGTEH0p4d_jHfJTO_CQ

SOFIA Data Analysis Cookbooks
=============================

|Python package|

**Aim**: These documents provide simple recipes (i.e., descriptions
and guided examples) for common data analysis objectives using SOFIA
processed data.

**Skill level**: These are generally written for a graduate student
audience. Some of the recipes are Jupyter notebooks designed for a
researcher with a working knowledge of the `numpy <https://numpy.org/>`__, `scipy <https://scipy.org/install.html>`__, `matplotlib <https://matplotlib.org/>`__, and `astropy <http://docs.astropy.org/en/stable/>`__. For more general information on these tools see `Jupyter notebooks usage and installation <https://jupyter.org/install>`_ and the `Python Data Science Handbook <https://github.com/jakevdp/PythonDataScienceHandbook?fbclid=IwAR28yUEuY3uJ-IuShD33iPCJ0-MLxDKArEugSlMrfZgxAzh4IFhA4fs7cdI>`_.

**Contact us**: For questions not addressed in these notebooks or the
SOFIA handbooks, please contact us at the sofia_help@sofia.usra.edu.

**Suggestions**: We also encourage you to submit any comments or
suggestions on these notebooks through a new Github
“`Issue <https://github.com/SOFIAObservatory/Recipes/issues/new/choose>`__”.

**Contribute**: If you have some code that you think other SOFIA users might be interested in, please contact us!!!

**Additional Resources**: For additional examples of data analysis of infrared data see the `Data Analysis Talks <https://www.youtube.com/playlist?list=PLTOSd8OgUP5rOFjS5EZPCHkogHeR5iC1L>`_ for JWST data.

Recipes
---------

+-------------------------------------------+------------------------------------------------------------------------+
| **Python**                                | **Description**                                                        |
+-------------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Basic Photometry`_              | *Aim*: Aperture photometry using FORCAST imaging data.                 |
|                                           |                                                                        |
|                                           | *Tools*: astropy, photutils                                            |
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
+-------------------------------------------+------------------------------------------------------------------------+
| `EXES: Velocity Calculation`_             | *Aim*: Estimate velocity shift of spectral lines.                      |
|                                           |                                                                        |
|                                           | *Tools*: astropy                                                       |
+-------------------------------------------+------------------------------------------------------------------------+
| `GREAT: Data Inspection (Python)`_        | *Aim*: How to view GREAT spectra.                                      |
|                                           |                                                                        |
|                                           | *Tools*: astropy                                                       |
+-------------------------------------------+------------------------------------------------------------------------+
| `GREAT: Reproject Data to GREAT res.`_    | *Aim*: Reproject other datasets to GREAT pixel map.                    |
|                                           |                                                                        |
|                                           | *Tools*: astropy, reproject                                            |
+-------------------------------------------+------------------------------------------------------------------------+
| `GREAT: Data Visualization`_              | *Aim*: Visualize GREAT datacubes in 2D and 3D.                         |
|                                           |                                                                        |
|                                           | *Tools*: astropy, jdaviz/Cubeviz, Glue                                 |
+-------------------------------------------+------------------------------------------------------------------------+
|                                           |                                                                        |
+-------------------------------------------+------------------------------------------------------------------------+
| **Other**                                 | **Description**                                                        |
+-------------------------------------------+------------------------------------------------------------------------+
| `SOFIA: Data Retrieval`_                  | *Aim*: Download SOFIA data through the IRSA.                           |
+-------------------------------------------+------------------------------------------------------------------------+
| `FORCAST: Photometry (Detailed)`_         | *Aim*: Detailed description of aperture photometry.                    |
+-------------------------------------------+------------------------------------------------------------------------+
| `FIFI-LS: Cube Analysis`_                 | *Aim*: Basic cube analysis.                                            |
|                                           |                                                                        |
|                                           | *Tools*: SOSPEX                                                        |
+-------------------------------------------+------------------------------------------------------------------------+
| `GREAT: Data Inspection (CLASS)`_         | *Aim*: How to view GREAT spectra.                                      |
|                                           |                                                                        |
|                                           | *Tools*: CLASS                                                         |
+-------------------------------------------+------------------------------------------------------------------------+
| `GREAT: Dara Visualization (CARTA)`_      | *Aim*: Visualize GREAT data along X, Y, & Z dimensions.                |
|                                           |                                                                        |
|                                           | *Tools*: CARTA                                                         |
+-------------------------------------------+------------------------------------------------------------------------+




.. _`FORCAST: Basic Photometry`: FORCAST-Basic_Photometry.ipynb
.. _`FORCAST: Photometry (detailed)`: FORCAST-photometry_detailed.ipynb
.. _`FORCAST: Grism Inspection`: FORCAST-Grism_Inspection.ipynb
.. _`FORCAST: Grism Line Analysis`: FORCAST-Grism_LineAnalysis.ipynb
.. _`FORCAST: Grism Custom Extraction`: FORCAST-Grism_CustomExtraction.ipynb
.. _`HAWC+: Data Inspection`: HAWC_30Dor.ipynb
.. _`EXES: Data Inspection`: EXES-Data-Inspection.ipynb
.. _`EXES: Telluric Correction`: EXES-Telluric-Correction.ipynb
.. _`EXES: Velocity Calculation`: EXES-Velocity-Shift.ipynb
.. _`SOFIA: data retrieval`: SOFIA_data_retrieval.ipynb
.. _`FIFI-LS: Cube Analysis`: FIFI-LS_sospex.ipynb
.. _`GREAT: Data Inspection (CLASS)`: GREAT-Class_primer.ipynb
.. _`GREAT: Data Inspection (python)`: GREAT-data-inspection.ipynb
.. _`GREAT: Reproject data to GREAT res.`: GREAT-reproject-data-to-GREAT-resolution.ipynb
.. _`GREAT: data visualization`: GREAT_Cubeviz.ipynb
.. _`GREAT: Dara Visualization (CARTA)`: https://www.youtube.com/watch?v=SJNNvWbzFwU

.. |Python package| image:: https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml/badge.svg
   :target: https://github.com/SOFIAObservatory/Recipes/actions/workflows/testing.yml


.. toctree::
    :caption: Quick Links
    :hidden:
    :maxdepth: 1

    SOFIA Data Analysis <https://www.sofia.usra.edu/data/data-analysis>
    Cookbook Github Repository <https://github.com/SOFIAObservatory/Recipes>
    Data Archive <https://irsa.ipac.caltech.edu/Missions/sofia.html>
    FAQs <https://sofia-faqs.readthedocs.io/en/latest/>

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
