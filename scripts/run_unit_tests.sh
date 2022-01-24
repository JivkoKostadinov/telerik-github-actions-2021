#!/usr/bin/env bash
# python -m coverage xml --include=core

if [[ "$OSTYPE" == "msys"* ]];
then
  python -m nose unit_tests/* --with-xunit --with-coverage --cover-erase --cover-package core -s
else
  python3 -m nose unit_tests/* --with-xunit --with-coverage --cover-erase --cover-package core -s
fi