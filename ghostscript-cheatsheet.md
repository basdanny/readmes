## [ghostscript](https://www.ghostscript.com/releases/index.html) cheatsheet

#### convert pdf to image
```
D:\Program Files\gs\gs9.55.0\bin\gswin64.exe -r300x300 -dJPEGQ=100 -sDEVICE=jpeg -o 1.jpg -dFirstPage=1 -dLastPage=3 -dNOPAUSE -dGraphicsAlphaBits=4 -dTextAlphaBits=4 "output.pdf" -dDOINTERPOLATE 
```


##### images to pdf
```
"D:\Program Files\gs\gs9.55.0\bin\gswin64.exe" -dNOSAFER -sDEVICE=pdfwrite -o output.pdf "D:\Program Files\gs\gs9.55.0\lib\viewjpeg.ps" -c ("1.jpg") viewJPEG showpage ("2.jpg") viewJPEG showpage 
```
