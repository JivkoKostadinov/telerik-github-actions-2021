#!/usr/bin/env bash
# python -m coverage xml --include=core

if [[ "$OSTYPE" == "msys"* ]];
then
  python -m nose unit_tests/*
else
  python3 -m nose unit_tests/*
fi
