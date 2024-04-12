# Biogeography_datadiv
Global project of assessing biodiversity in French Polynesia

The main purpose of this code is to get a filtered data from a GBIF dataset of 
records (e.g. occurrences), be aware that because of storage space limitations,
the code can't run without your own record file. 

A shapefile is also mandatory to run the `additional data` part of the code. 
It's available here : https://arcg.is/1m85Le0
Rename it as : "shp_pf" to work.

Here I've added a way to read the most complicated file which is if you download
in ".txt". You can also simply read.csv or use the rgbif::occ_download() to get 
what you want. (see args of function)
