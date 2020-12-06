for f in export-ubuntu/*.sh; do  # or wget-*.sh instead of *.sh
  bash "$f" -H 
done
