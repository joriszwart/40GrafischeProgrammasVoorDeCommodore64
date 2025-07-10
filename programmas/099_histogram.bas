100 rem programma 37 histogram
110 print chr$(147)
120 print "histogram tekenen"
130 print "-----------------"
140 print:print
150 input "hoeveel gegevens(<40)";n
160 dim a(n)
170 mx=-1e10:print
180 for j=1 to n
190 : print "waarde";j;tab(12);
200 : input a(j)
210 : if a(j)>mx then mx=a(j)
220 next j
230 print chr$(147)
240 hires 0,1
250 rem horizontale as
260 line 0,180,320,180,1
270 rem verticale as
280 line 10,0,10,180,1
290 rem schaalverdeling
300 for j=10 to 1 step -1
310 : x1=4:y1=180-j*16:x2=10:y2=y1
320 : line x1,y1,x2,y2,1
330 : x1=7:y1=y2+8:x2=10:y2=y1
340 : line x1,y1,x2,y2,1
350 next j
360 rem staven tekenen b=breedte
370 b=int(300/n):h=0.5
380 for j=1 to n
390 : x1=(j-1)*b+15:y1=180
400 : x2=x1:y2=int(180-160*a(j)/mx+h)
410 : line x1,y1,x2,y2,1
420 : x1=x2:y1=y2:x2=x1+b:y2=y1
430 : line x1,y1,x2,y2,1
440 : x1=x2:y1=y2:x2=x1:y2=180
450 : line x1,y1,x2,y2,1
460 next j
470 get a$:if a$="" then 470
480 end

