#!/usr/bin/env bash
#
# FlyingBBQ - generate PDF from Markdown

pandoc -f gfm "$1".md -o "$1".pdf -V linkcolor:blue --filter pandoc-plantuml
