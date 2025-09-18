#!/usr/bin/env bash

DISK="40_grafische_programmas_voor_de_commodore_64.d64"

c1541 -format "imported by,vache" d64 "$DISK"

for file in programmas/*.bas; do
    name="$(basename "${file%.bas}")"
    prg="programmas/${name}.prg"
    petcat -wsimon -o "$prg" < "$file"
    c1541 -attach "$DISK" -write "$prg" "$name"
done
