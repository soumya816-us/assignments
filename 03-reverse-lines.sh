#!/bin/bash

echo " the reverse lines are"

awk '{ print | "rev" }' file4.txt > output.txt
