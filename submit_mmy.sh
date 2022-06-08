#!/usr/bin/env bash
#PBS -P w97
#PBS -q normalbw
#PBS -l walltime=03:00:00
#PBS -l ncpus=1
#PBS -l mem=190GB
#PBS -l jobfs=175GB
#PBS -l storage=gdata/hh5+gdata/sx70+gdata/rt52+gdata/w97+gdata/w28+gdata/zz93
#PBS -j oe
#PBS -l wd
#PBS -m ae

module purge
module use /g/data3/hh5/public/modules
module load conda/analysis3

cd /g/data/w97/mm3972/model/wrf/era5grib
era5grib wrf --namelist ./nml_mmy/namelist_201701.wps --geo /g/data/w97/mm3972/model/wrf/NUWRF/LISWRF_configs/drght_2017_2019/geo_em.d01.nc --output ./GRIBFILE_mmy/GRIBFILE.AAA_201701
