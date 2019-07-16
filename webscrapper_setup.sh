#!/usr/bin/bash
#setting up conda env for webscraping and google queries
conda update anaconda
conda env -n py3.4 python=3.4
conda activate py3.4
conda install -c anaconda mysql-connector-python
pip install beautifulsoup4
pip install python-google-places
pip install --upgrade git+https://github.com/m-wrzr/populartimes
