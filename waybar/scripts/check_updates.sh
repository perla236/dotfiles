#!/bin/bash

# Provjeri pacman updateove
updates=$(checkupdates | wc -l)

# Ako ima updateova, ispiši ikonu i broj
if [ "$updates" -gt 0 ]; then
    echo "{\"text\": \"󰮯 $updates\", \"tooltip\": \"Paketa za update: $updates\", \"class\": \"pending\"}"
else
    echo "{\"text\": \"\", \"tooltip\": \"Sustav je ažuran\", \"class\": \"updated\"}"
fi
