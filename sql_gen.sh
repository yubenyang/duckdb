#!/bin/bash

dir=extension/tpch/dbgen/queries
out=${dir}/combine.sql

> "$out"

for file in "$dir"/*.sql; do
  cat "$file" >> "$out"
done
