#!/bin/bash

#In this basic script the IpInfo.sh output is piped to sed 
#sed then uses the -n command to filter out every thing in the output except
# Those which are IP Address.  This is then Prinited as an output to the screen.
./IpInfo.sh | sed -n '/IP Address/p'
    

