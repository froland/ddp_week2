#!/bin/bash

sed 's///g' autorisations-durbanisme-h.csv | iconv -f utf-8 -t utf-8 -c > autorisations-durbanisme-h-clean.csv
