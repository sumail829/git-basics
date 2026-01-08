#!/usr/bin/env bash
set -x

mkdir testmonth
cd testmonth
for m in {1..12}; do
  mkdir -p "$m"
   for d in {1..30}; do
   mkdir -p "$m/$d"
    for t in sunday monday tuesday wednesday thursday friday saturaday; do
      touch "$m/$d/$t"
    done
  done
done
