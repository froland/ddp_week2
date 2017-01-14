#!/bin/bash

sed 's///g' data/autorisations-durbanisme-h.csv | iconv -f utf-8 -t utf-8 -c > data/autorisations-durbanisme-h-clean.csv
