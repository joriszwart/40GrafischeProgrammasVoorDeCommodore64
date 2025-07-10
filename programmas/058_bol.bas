100 rem programma 25 bol
110 print chr$ (147)
120 input "alpha in graden (45)   ";a
130 input "verkleiningsfactor (.5)";k
140 input "straal, maximaal 80    ";r
150 u=160:v=100:h=0.5:rd=~/180
160 w=a*rd:c=k*cos(w):s=k*sin(w)
170 print chr$(147)
180 hires 0,1
190 for w=-90 to 90 step 15
200 : w1=w*rd:r1=r*cos(w1)
210 : for p=0 to 360 step 3
220 :   p1=p*rd:x=1.15*r1*cos(p1)
230 :   y=r1*sin(p1):z=r*sin(w1)
240 :   if p=0 then x1=int(u+x+h):y1=int(v-z+h):goto 290
250 :   x2=int(u+x+c*y+h)
260 :   y2=int(v-s*y-z+h)
270 :   line x1,y1,x2,y2,1
280 :   x1=x2:y1=y2
290 : next p
300 next w
310 for p=0 to 180 step 15
320 : p1=p*rd
330 : for w=0 to 360 step 3
340 :   w1=w*rd:r1=r*cos(w1)
350 :   x=1.15*r1*cos(p1)
360 :   y=r1*sin(p1):z=r*sin(w1)
370 :   if w=0 then x1=int(u+x+c*y+h):y1=int(v-s*y-z+h):goto 420
380 :   x2=int(u+x+c*y+h)
390 :   y2=int(v-s*y-z+h)
400 :   line x1,y1,x2,y2,1
410 :   x1=x2:y1=y2
420 : next w
430 next p
440 get a$:if a$="" then 440
450 end

