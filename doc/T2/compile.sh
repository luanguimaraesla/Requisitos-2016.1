#!/bin/bash
pdflatex requisitos.tex
bibtex requisitos
pdflatex requisitos.tex x 2
