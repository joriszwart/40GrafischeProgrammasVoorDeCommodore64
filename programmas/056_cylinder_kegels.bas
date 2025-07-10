100 rem programma 24 cylinder,kegels
110 print chr$(147)
120 input "alpha in graden (45)   ";a
130 input "verkleiningsfactor (,5)";k
140 input "stralen r1 en r2       ";r1,r2
150 u=160:v=100:h=0.5:rd=~/180:dr=(r1-r2)/6
160 w=a*rd:c=k*cos(w):s=k*sin(w):n=0
170 print chr$(147)
180 hires 0,1
190 for z=-60 to 60 step 20
200 : r=r1-n*dr
210 : for w=0 to 360 step 3
220 :   w1=w*rd
230 :   x=r*cos(w1):y=r*sin(w1)
240 :   if w1<>0 then 270
250 :   x1=int(u+x+c*y+h):y1=int(v-s*y-z+h)
260 :   goto 310
270 :   x2=int(u+x+c*y+h)
280 :   y2=int(v-s*y-z+h)
290 :   line x1,y1,x2,y2,1
300 :   x1=x2:y1=y2
310 : next w
320 : n=n+1
330 next z
340 for w=0 to 360 step 23
350 : w1=w*rd
360 : x=r1*cos(w1):y=r1*sin(w1)
370 : x1=int(u+x+c*y+h):y1=int(v-s*y+60+h)
380 : x=r2*cos(w1):y=r2*sin(w1)
390 : x2=int(u+x+c*y+h):y2=int(v-s*y-60+h)
400 : line x1,y1,x2,y2,1
410 next w
420 line u,0,u,200,1
430 get a$:if a$="" then 430
440 end

