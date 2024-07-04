using NetCDF

filename = joinpath(homedir(), "Downloads", "EMIT_L2A_RFL_001_20240521T232728_2414216_003.nc")

ds = NetCDF.open(filename)
ds

glt_x = NetCDF.getvar(ds, "glt_x")
println(glt_x)

reflectance = NetCDF.getvar(ds, "reflectance")
println(reflectance)

glt_y = NetCDF.getvar(ds, "glt_y")
println(glt_y)
