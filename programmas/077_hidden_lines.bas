100 rem programma 29 grafiek van z=f(x,y),hidden lines
110 print chr$(147)
120 input "alpha in graden (45-135)   ";w
130 input "verkleiningsfactor (.5-.75)";k
140 input "rechtergrens voor x(>0)    ";a
150 input "vergrotingsfactor (30-80)  ";k1
160 u=160:v=100:h=0.5:rd=~/180
170 c=k*cos(w*rd):s=k*sin(w*rd)
180 dx=3:dy=5:af=a/115
190 dim h(255)
200 for l= 0 to 255
210 : h(l)=1000
220 next l
230 print chr$(147)
240 hires 7,8
250 for yy=-115 to 115 step dy
260 : y=yy*af
270 : for xx=-115 to 115 step dx
280 :   x=xx*af:gosub 1000
290 :   xg=int(u+xx+c*yy+h)
300 :   yg=int(v-s*yy-z+h)
305 :   if xg<0 then xg=0:if xg>320 then xg=320
310 :   if yg<o or yg>200 then print "foute k1":stop
320 :   if xx>-115 then 360
330 :   f1=0:l=int(xg/dx)
340 :   if yg<=h(l) then f1=1:h(l)=yg
350 :   x1=xg:y1=yg:goto 410
360 :   f2=0:l=int(xg/dx)
370 :   if yg<=h(l) then f2=1:h(l)=yg
380 :   x2=xg:y2=yg
390 :   if f1*f2=1 then line x1,y1,x2,y2,1
400 :   x1=x2:y1=y2:f1=f2
410 : next xx
420 next yy
430 get a$:if a$="" then 430
440 end
1000 z=k1*exp(-x*x-y*y)
1100 return
