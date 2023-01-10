#!/bin/bash
#
# update and convert rcpol interaction data to TSV

preston track http://chaves.rcpol.org.br/api/Interactions\
 | grep -v doi\
 | preston cat\
 | mlr --ijson --otsvlite cat\
 > interactions.tsv
