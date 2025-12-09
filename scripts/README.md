`scripts/` directory
===================

This directory consists of two elements.

First, `hackerspub-grouped.svg` is a file created by copying `hackerspub.svg` from the root directory, opening it in [Inkscape], and manually grouping the elements. If the grouping is incorrect, you should edit this file rather than the original.

`extract-svg-by-group.sh` is a script that exports each group from `hackerspub-grouped.svg` as a separate SVG file. When executed, it creates an `exports` directory under the root directory and generates SVG files for each group. The output filenames are meaningless (e.g., `g1.svg`), so you may need to rename them manually as needed.

[Inkscape](https://inkscape.org/)
