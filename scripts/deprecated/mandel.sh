#!/bin/bash

ARCH="s4xs8"
APP="mandelbrot.${1}jobs"
DATADIR="/home/sergio/gap/groupoid_orbit/data"
OUTPUTDIR="/home/sergio/gap/groupoid_orbit/results"
GAPDIR="/home/sergio/gap/groupoid_orbit"
GAPSCRIPT="/home/sergio/gap/groupoid_orbit/runarchsym.sh"

DATAFILES=`ls $DATADIR/${APP}.$ARCH*`

#OUTPUTDIR=$OUTPUTDIR/results-`date +%F-%H-%M`
OUTPUTDIR=$OUTPUTDIR/mandelbrot-${1}
mkdir -p $OUTPUTDIR

cd $GAPDIR/

for file in $DATAFILES; do
    outfile="$OUTPUTDIR/results${file#$DATADIR/${APP}.$ARCH}"
    $GAPSCRIPT $APP $ARCH ${file#$DATADIR/} 2>$OUTPUTDIR/errors.txt > $outfile&
done

wait

for file in $DATAFILES; do
    outfile="$OUTPUTDIR/results${file#$DATADIR/${APP}.$ARCH}"
    echo "=========================" >> $OUTPUTDIR/allresults.txt
    echo $file >> $OUTPUTDIR/allresults.txt
    echo "-------------------------" >> $OUTPUTDIR/allresults.txt
    tail -n 3 $outfile >> $OUTPUTDIR/allresults.txt
done
