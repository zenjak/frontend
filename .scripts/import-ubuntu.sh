for f in import-ubuntu/*.sh; do  # or wget-*.sh instead of *.sh
  bash "$f" -H 
done
