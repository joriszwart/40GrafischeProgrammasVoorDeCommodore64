#!/usr/bin/env bash

DISK="40_grafische_programmas_voor_de_commodore_64.d64"
PROGRAM_DIR="../programmas"

c1541 -format "imported by,vache" d64 "$DISK"

c1541 -attach "$DISK" -write "simon's basic.prg" "simon's basic"

for file in "$PROGRAM_DIR"/*.bas; do
    name="$(basename "${file%.bas}")"
    clean_name="${name//_/ }"
    prg="$PROGRAM_DIR/${name}.prg"
    petcat -wsimon -o "$prg" < "$file"
    c1541 -attach "$DISK" -write "$prg" "$clean_name"
done

rm "$PROGRAM_DIR"/*.prg
