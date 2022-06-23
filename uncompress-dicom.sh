#!/bin/bash

echo "RUN FROM the INSIDE DIR"

echo "Starting DICOM uncompresser"

# check if args exist
if [ -z "$1" ]
then
    echo "Please provide output dir: sh ./uncompress-dicom.sh <outputDir>"
    exit 0
fi

# check args
if [ $# -eq 1 ]
then
    dirOut="outputDir"
else
    echo "Too many args
    exit 0
fi

#Create output dir
{ # try
    mkdir $dirOut &&
    echo "Output directory created: /${dirOut}"
    #save your output
} || { # catch
    echo "Already exists: /${dirOut}"
    exit
    # save log for exception
}

# Convert files

for FILE in *.dcm;
    do {
        gdcmconv --raw $FILE $dirOut/$FILE &&
        echo "Uncompressed: ${FILE}"
    } ||
    {
        echo "Failed to Uncompress: ${FILE}"
    }
done

echo "Finished"
