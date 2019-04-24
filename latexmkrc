#!/usr/bin/env perl
$pdflatex          = 'pdflatex %O -synctex=1 %S';
$latex             = 'uplatex %O -synctex=1 %S';
$lualatex          = 'lualatex %O -synctex=1 %S';
$biber             = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex            = 'bibtex %O %B';
# $bibtex            = 'upbibtex %O %B';  # For Japanese
$makeindex         = 'mendex %O -o %D %S';
# $makeindex         = 'upmendex %O -o %D %S';  # For Japanese
$dvipdf            = 'dvipdfmx %O -o %D %S';
$dvips             = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf            = 'ps2pdf %O %S %D';
$pdf_mode          = 1; # Use pdflatex
# $pdf_mode          = 3;  # For Japanese, use dvipdfmx
$max_repeat        = 5;
$pdf_update_method = 0;  # 0 = auto update
$pvc_view_file_via_temporary = 0;
$pdf_previewer     = 'open -ga /Applications/Skim.app';