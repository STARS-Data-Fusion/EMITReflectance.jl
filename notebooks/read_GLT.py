from os.path import join, expanduser
import numpy as np
import xarray as xr

filename = expanduser(join("~", "Downloads", "EMIT_L2A_RFL_001_20240521T232728_2414216_003.nc"))

ds = xr.open_dataset(filename)
ds

ds.dims

loc = xr.open_dataset(filename, group="location")

loc["glt_x"]

reflectance = np.array(ds["reflectance"])
print(reflectance)

glt_x = np.array(loc["glt_x"])
print(glt_x)

glt_y = np.array(loc["glt_y"])
print(glt_y) 




