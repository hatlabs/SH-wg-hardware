#!/usr/bin/env bash

set -euo pipefail
shopt -s inherit_errexit

# kikit panelize \
#    --layout 'grid; space: 7mm; rows: 3; cols: 3; hbackbone: 3mm; vbackbone: 3mm' \
#    --tabs 'annotation' \
#    --cuts 'mousebites; drill: 0.5mm; spacing: 1mm; prolong: 0.5mm' \
#    --framing 'frame; width: 5mm; space: 3mm; cuts: both' \
#    --source 'type: rectangle; tlx: 33mm; tly: 25mm; brx: 105mm; bry: 91mm' \
#    --post 'millradius: 1mm' \
#    SH-wg.kicad_pcb SH-wg-panel-mezzanine.kicad_pcb

./panelize_mezzanine.py

kikit fab jlcpcb --no-drc --assembly --schematic SH-wg.kicad_sch SH-wg-panel-mezzanine.kicad_pcb assembly-panel-mezzanine
