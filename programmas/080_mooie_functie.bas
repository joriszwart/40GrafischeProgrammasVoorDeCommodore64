100 rem programma 30 mooie functie
110 print chr$(147)
120 input "alpha in graden (45-135)   ";w
130 input "verkleiningsfactor (.5-.75)";k
140 u=160:v=100:h=0.5:rd=~/180
150 c=k*cos(w*rd):s=k*sin(w*rd)
160 dx=3:dy=5:k1=15
170 dim h(320)
180 for l= 0 to 320
190 : h(l)=1000
200 next l
210 print chr$(147)
220 hires 7,8
230 for yy=-115 to 115 step dy
240 : m1=cos(yy*2*~/115-~)+1
250 : for xx=-115 to 115 step dx
260 :   m2=cos(xx*2*~/115-~)+1
270 :   z=k1*m1*m2
280 :   xg=int(u+xx+c*yy+h)
296 :   yg=int(v-s*yy-z+h)
300 :   if xx>-115 then 340
310 :   f1=0:l=int(xg/dx)
320 :   if yg<=h(l) then f1=1:h(l)=yg
330 :   x1=xg:y1=yg:goto 390
340 :   f2=0:l=int(xg/dx)
350 :   if yg<=h(l) then f2=1:h(l)=yg
360 :   x2=xg:y2=yg
370 :   if f1*f2=1 then line x1,y1,x2,y2,1
380 :   x1=x2:y1=y2:f1=f2
390 : next xx
400 next yy
410 get a$:if a$="" then 410
420 end

