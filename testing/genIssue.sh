#!/bin/bash


sed -e "s/\${title}/$1/" -e "s/\${exp}/$2/" -e "s/\${symp}/$3/" -e "s/\${sol}/$4/" template.txt
