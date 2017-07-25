#!/bin/sh

pdflatex -interaction=nonstopmode $1
filename=$(echo $1 | sed "s/\..*//")
makeglossaries $filename
pdflatex -interaction=nonstopmode $1
