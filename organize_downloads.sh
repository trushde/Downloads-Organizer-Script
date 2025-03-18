#!/bin/zsh

cd ~/Downloads

# grep to only process certain file types
ls | grep -E '\.(pdf|jpg|mp3|txt|gz)$' | while read file; do
  [ -d "$file" ] && continue  # Skip directories

  # sed for underscores for clean filenames
  clean_file=$(echo "$file" | sed 's/ /_/g')
  if [[ "$file" != "$clean_file" ]]; then
    mv "$file" "$clean_file"
    file="$clean_file"
  fi

  # awk: Extract extension and log the move with a timestamp
  ext=$(echo "$file" | awk -F. '{print $NF}')
  echo "$(date): Moved $file → $ext/" >> ../organizer_log.txt

  mkdir -p "$ext"
  mv "$file" "$ext/"
done


