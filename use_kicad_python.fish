# If you're using MacOS and fish shell, you can source this script
# to enable using KiCAD's built-in Python version, required by
# KiKit.

set -gx KICAD_PYTHON "/Applications/KiCad/KiCad.app/Contents/Frameworks/Python.framework/Versions/3.8"
set PATH "$KICAD_PYTHON/bin" $PATH
