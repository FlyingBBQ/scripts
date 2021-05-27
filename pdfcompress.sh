#!/usr/bin/env bash
#
# FlyingBBQ - compress PDF

# /screen  - minimal
# /ebook   - high quality
# /printer - optimized
# /default - normal

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=compressed_$1 $1
