#!/usr/bin/env bash

set -euo pipefail
shopt -s inherit_errexit

./panelize.py

kikit fab jlcpcb --no-drc --assembly --schematic SH-wg.kicad_sch SH-wg-panel.kicad_pcb assembly-panel
