#!/bin/bash
mkdir TORONTO231
mkdir TORONTO231_FEAT
cd TORONTO231
matlab -r gen.m
cd ../TORONTO231_FEAT
python gen.py
