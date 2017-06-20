#!/bin/bash                                                                                                                                                                                        
set -e #Quit if we get an error                                                                                                                                                                      


#Check correct number of command line arguments (accounting for options)                                                                                                                              
         
if (( $# != 2 )); then
    echo "Computes the time difference between two files in seconds" >&2
    echo "Usage  :  timeDiff.sh  [file1] [file2]" >&2
#    echo "Example:  loopSub_GPS.sh loopSub_GPS.sh checkpoint_gdot0.0000_N5_nc50m_xi0.5.chk 12 1" >&2 
  exit 1
fi

#Assign parameter names
file1=$1
file2=$2

#Compute the timedifference
(stat --printf '%Y' $1; printf ' - '; stat --printf '%Y\n' $2) | bc -lq