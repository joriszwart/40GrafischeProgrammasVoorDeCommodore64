100 rem programma 27 ikosaeder
110 print chr$ (147)
120 input "alpha in graden (90)   ";a
130 input "verkleiningsfactor (.4)";k
140 u=160:v=100:h=0.5:rd=~/180
150 w=a*rd:c=k*cos(w):s=k*sin(w)
160 t=(sqr(5)-1)/2:f=80
170 print chr$(147)
180 hires 7,8
190 dim x(12),y(12),z(12),z$(3)
200 x(1)=   0:y(1)=  f*t:z(1)=  -f
210 x(2)=   0:y(2)= -f*t:z(2)=  -f
220 x(3)=   f:y(3)=    0:z(3)=-f*t
230 x(4)=  -f:y(4)=    0:z(4)=-f*t
240 x(5)= f*t:y(5)=    f:z(5)=   0
250 x(6)=-f*t:y(6)=    f:z(6)=   0
260 x(7)= f*t:y(7)=   -f:z(7)=   0
270 x(8)=-f*t:y(8)=   -f:z(8)=   0
280 x(9)=   f:y(9)=    0:z(9)= f*t
290 x(10)= -f:y(10)=   0:z(10)=f*t
300 x(11)=  0:y(11)= f*t:z(11)=  f
310 x(12)=  0:y(12)=-f*t:z(12)=  f
320 for n=1 to 3
330 : read z$(n):l=len(z$(n))
340 : for m=1 to l-1 step 2
350 :   i=asc(mid$(z$(n),m,1))-64
360 :   j=asc(mid$(z$(n),m+1,1))-64
370 :   x1=int(u+x(i)+c*y(i)+h)
380 :   y1=int(v-s*y(i)-z(i)+h)
390 :   x2=int(u+x(j)+c*y(j)+h)
400 :   y2=int(v-s*y(j)-z(j)+h)
410 :   line x1,y1,x2,y2,1
420 : next m
430 next n
440 get a$:if a$="" then 440
450 end
460 : data "bcceeffddbabacaeafad"
470 : data "bhhddjjffkkeeiiccggb"
480 : data "ghhjjkkiiglglhljlkli"

