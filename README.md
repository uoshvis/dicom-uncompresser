# dicom-uncompresser
Instructions for converting compressed DICOM files into uncompressed DICOM files.

Main discussion: 

https://www.researchgate.net/post/Can-anyone-help-me-converting-compressed-DICOM-file-into-uncompressed-DICOM-files

### Solution

http://gdcm.sourceforge.net/html/gdcmconv.html

#### Precompiled Debian/Ubuntu

```
$ sudo apt-get install libgdcm-tools
```

```
gdcmconv [options] file-in file-out

[options]: --raw
```


#### Bash script

Run from the inside uncompressed dir

```
$ sh ./uncompress-dicom <outputDir> 
```
