#!/bin/bash

# Input URL (bisa juga dari file nanti)
read -p "Masukkan URL: " url

# Hapus angka atau string apapun setelah tanda '='
cleaned_url=$(echo "$url" | sed -E 's/([?&][a-zA-Z0-9_]+=)[^&]*/\1/g')

echo "URL setelah dibersihkan:"
echo "$cleaned_url"
