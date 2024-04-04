#!/bin/bash

top_dir="../SWE_2021_41_week_5-main"

cd "$top_dir" || exit

for file in files/*; do
  first=$(basename "$file" | cut -c1 | tr '[:upper:]' '[:lower:]' )

  if [[ ! -z "$first" ]]; then
    mv "$file" "$top_dir/$first/"
    echo "$file to $first folder"
  fi
done