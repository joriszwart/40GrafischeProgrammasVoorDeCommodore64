100 rem programma 7 grafiek van een continue functie
110 print chr$(147)
120 input"linker-interval grens"; a
130 input"rechter-interval grens"; b
140 if a>b then c=a:a=b:b=c
150 hp=-100000:lp=100000:dx=(b-a)/64
160 for x=a to b step dx
170 : gosub 1000
180 : if y>hp then hp=y
190 : if y<lp then lp=y
200 next x
210 print "grootste y-waarde:"; hp
220 print "kleinste y-waarde:"; lp
230 input"bovengrens voor y"; hp
240 input"ondergrens voor y"; lp
250 print chr$(147)
260 hires 0,1
270 kx=320/(b-a):ky=200/(hp-lp):h=0.5
280 for x=a to b step dx
290 : gosub 1000
300 : xx=int(kx*(x-a)+h)
310 : yy=int(ky*(hp-y)+h)
320 : if x=a then x1=xx:y1=yy:goto360
330 : x2=xx:y2=yy
340 : line x1,y1,x2,y2,1
350 : x1=x2:y1=y2
360 next x
370 x1=0:y1=int(ky*hp+h):x2=320:y2=y1
380 if y1>=0 and y1<=320 then line x1,y1,x2,y2,1
390 x1=int(kx*(-a)+h):y1=0:x2=x1:y2=200
400 if x1>=0 and x1<=320 then line x1,y1,x2,y2,1
410 get a$:if a$="" then 410
420 end
430 :
1000 y=exp(-0.1*x)*cos(x)
1010 return
