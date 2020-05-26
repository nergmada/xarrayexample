import cartopy.crs as ccrs
import matplotlib.pyplot as plt
import numpy as np

import xarray as xr

snow_data = xr.open_mfdataset('60_90_70_130_e5_sf_daily_*.nc', combine='by_coords')
weights = np.cos(np.deg2rad(snow_data.latitude))
weights.name = 'weights'

snow_data_weighted = snow_data.weighted(weights)
snow_data_mean = snow_data_weighted.mean(('longitude','latitude')) 

print(snow_data_weighted)
print(snow_data_mean)
