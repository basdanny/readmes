## [ghostscript](https://www.ghostscript.com/releases/index.html) cheatsheet

#### convert pdf to image
```
gs -r300x300 -dJPEGQ=100 -sDEVICE=jpeg -o 1.jpg -dFirstPage=1 -dLastPage=3 -dNOPAUSE -dGraphicsAlphaBits=4 -dTextAlphaBits=4 "output.pdf" -dDOINTERPOLATE 
```


##### images to pdf
```
gs -dNOSAFER -sDEVICE=pdfwrite -o output.pdf "D:\Program Files\gs\gs9.55.0\lib\viewjpeg.ps" -c ("1.jpg") viewJPEG showpage ("2.jpg") viewJPEG showpage 
```

##### combine several pdfs
```
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -sOutputFile=combined.pdf 01.pdf 02.pdf
```
