100 rem programma 39 speldenworp van buffon
110 print chr$(147)
120 print "speldenworp van buffon"
130 print "----------------------"
140 input "hoeveel worpen";n
150 m=0:h=0.5
160 print chr$(147)
170 hires 0,1
180 rem lijnen tekenen
190 for y1=10 to 190 step 60
200 : line 0,y1,320,y1,1
210 next y1
220 rem n maal gooien en tekenen
230 for j=1 to n
240 : xm=int(290*rnd(1)+30+h)
250 : ym=int(60*rnd(1)+70+h)
260 : w=*rnd(1)
270 : dx=30*cos(w):dy=30*sin(w)
280 : x1=int(xm-dx+h):y1=int(ym+dy+h)
290 : x2=int(xm+dx+h):y2=int(ym-dy+h)
300 : line x1,y1,x2,y2,1
310 : if y1>=140 or y2<=80 then m=m+1
320 next j
330 get a$:if a$="" then 330
340 print chr$(147)
350 print "aantal worpen       ";n
360 print "aantal keer snijden ";m
370 print "benadering voor     ";2*n/m
380 end

