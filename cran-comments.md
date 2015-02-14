This is bug-fixing update of package 'ztable'. 

The purpose of package 'ztable' is make tables easily in both "HTML" and "LaTex" 
formats for reproducible research.
After recent update of RStudio(Version 0.98.1102), some of "HTML" tables 
made by ztable package were broken.
Could I be more specific? Before the update, "<td>     </td>" in HTML table showed 
an empty cell, but after the update "</td>" is expressed in the cell. I don't know the 
reason exactly, but just it happens. So I have changed my code in ztable package
to fix it.
Please accept this update. I am afraid that users of this package be disppointed.

Thank you for your time.

Several new functions were added.

Bug fixed.

## Test environments
* local OS X install, R 3.1.2
* win-builder (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs.

