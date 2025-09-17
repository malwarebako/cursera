#!/usr/bin/env bash

# Usage: ./simple-interest.sh principal rate years
# Example: ./simple-interest.sh 1000 5 2

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal annual_rate_percent years"
  exit 1
fi

P=$1
R=$2
T=$3

# compute simple interest: I = P * R * T / 100
I=$(awk -v p="$P" -v r="$R" -v t="$T" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
echo "$I"

