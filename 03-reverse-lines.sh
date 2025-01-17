#!/bin/bash

echo " the reverse lines are"

awk '{ print | "rev" }' input.txt > output.txt
