#if Virtual environment is not installed but python is do
pip3 install virtualenv

virtualenv -p /usr/bin/python3 venv #create a new virtual environment to 
#run python in (specify to use python3

source venv/bin/activate #start using the virtual version of python

#install necessary libraries for cartopy
apt install libproj-dev proj-data proj-bin
#RHEL
yum #instead of apt
#install necessary geos libraries for cartopy  
apt install libgeos-dev

pip install cartopy

pip install matplotlib

pip install xarray

pip install scipy

pip install netcdf4

pip install dask

pip install toolz
