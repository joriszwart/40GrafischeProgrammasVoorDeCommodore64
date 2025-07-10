100 rem programma 28 grafiek van z=f(x,y)
110 print chr$(147)
120 input "alpha in graden (45-135)   ";w
130 input "verkleiningsfactor (.5-.75)";k
140 input "rechtergrens voor x(>0)    ";a
150 input "vergrotingsfactor (30-80)  ";k1
160 u=160:v=100:h=0.5:rd=~/180
170 c=k*cos(w*rd):s=k*sin(w*rd)
180 dx=3:dy=5:af=a/115
190 print chr$(147)
200 hires 7,8
210 for yy=-115 to 115 step dy
220 : y=yy*af
230 : for xx=-115 to 115 step dx
240 :   x=xx*af:gosub 1000
250 :   xg=int(u+xx+c*yy+h)
260 :   yg=int(v-s*yy-z+h)
270 :   if xg<0 then xg=0:if xg>320 then xg=320
280 :   if yg<0 or yg>200 then print "foute k1":stop
290 :   if xx=-115 then x1=xg:y1=yg:goto 330
300 :   x2=xg:y2=yg
310 :   line x1,y1,x2,y2,1
320 :   x1=x2:y1=y2
330 : next xx
340 next yy
350 get a$:if a$="" then 350
360 end
1000 z=k1*exp(-x*x-y*y)
1100 return

