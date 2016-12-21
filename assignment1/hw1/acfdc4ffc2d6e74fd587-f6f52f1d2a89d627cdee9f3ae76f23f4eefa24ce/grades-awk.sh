#!/bin/bash
#Andrew Rutherford

awk '{sum=$4+$5+$6; avg=int(sum/3); print avg,"[",$1,"]",$3,",",$2}' $1 | sort -k4 -k5 -k1
