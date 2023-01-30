### SOFIA Data Analysis Cookbooks

[repo]:s-goldman

**Aim**: Jupyter notebooks are hosted in the docs directory. These documents provide simple "recipes" (i.e., descriptions and guided examples) for common data analysis objectives using SOFIA processed data. The notebooks can be viewed on Readthedocs.

**Skill level**: These are generally written for a graduate student audience. Some of the recipes are `jupyter` notebooks designed for a researcher with a working knowledge of the [numpy/scipy/matplotlib stack](https://scipy.org/install.html) as well the [astropy](http://docs.astropy.org/en/stable/) modules.

**Feedback**: We also encourage you to submit any comments or suggestions on these notebooks through a new Github "[Issue](https://github.com/SOFIAObservatory/Recipes/issues/new/choose)".

**Contributing**: Please contribute! Package uses pytest, testing for the successful execution of each Jupyter notebook, as well as all hyperlinks in repository. To test the package locally using *pytest* use the command: `pytest docs/*.ipynb --nbmake --overwrite --check-links`. To create a local version of the readthedocs site, use the following command in the *docs* directory: `make html`


**Resources**: [SOFIA Data Handbooks](https://www.sofia.usra.edu/science/proposing-and-observing/data-products/data-resources), [SOFIA example data repository](https://zenodo.org/record/5835212#.Yd0JGxPMKqk)
