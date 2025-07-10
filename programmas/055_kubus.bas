100 rem programma 23 kubus met zadelvlak
110 print chr$(147)
120 input "alpha in graden (45)   ";a
130 input "verkleiningsfactor (,5)";k
140 input "hoeveel lijnen (32)    ";n
150 u=160:v=100:h=0.5:rd=~/180
160 w=a*rd:c=k*cos(w):s=k*sin(w)
170 dim x(8),y(8)
180 for j=1 to 8
190 : read x,y,z
200 : x(j)=int(u+x+c*y+h)
210 : y(j)=int(v-s*y-z+h)
220 next j
230 print chr$(147)
240 hires 0,1
250 read z$:l=len(z$)
260 for m=1 to l-1 step 2
270 : i=asc(mid$(z$,m,1))-64
280 : j=asc(mid$(z$,m+1,1))-64
290 : line x(i),y(i),x(j),y(j),1
300 next m
310 for j=0 to n
320 : x1=int(x(2)+j*(x(7)-x(2))/n+h)
330 : y1=int(y(2)+j*(y(7)-y(2))/n+h)
340 : x2=int(x(5)+j*(x(4)-x(5))/n+h)
350 : y2=int(y(5)+j*(y(4)-y(5))/n+h)
360 : line x1,y1,x2,y2,1
370 next j
380 line x(2),y(2),x(7),y(7),1
390 line x(5),y(5),x(4),y(4),1
400 get a$:if a$="" then 400
410 end
420 : data -60,-60,-60, 60,-60,-60
430 : data  60, 60,-60,-60, 60,-60
440 : data -60,-60, 60, 60,-60, 60
450 : data  60, 60, 60,-60, 60, 60
460 : data "abbccddaaebfcgdheffgghhe"

