#!/usr/bin/env bash

pandoc -f gfm "$1".md -o "$1".pdf --filter pandoc-plantuml
