100 rem programma 11 grafiek van een willekeurige functie
110 print chr$(147)
120 input "linkergrens voor x "; a
130 input "rechtergrens voor x"; b
140 input "bovengrens voor y "; hp
150 input "ondergrens voor y "; lp
160 if a>b then c=a:a=b:b=c
170 kx=320/(b-a):ky=200/(hp-lp):h=0.5
180 dx=(b-a)/256
190 print chr$ (147)
200 hires 0,1
210 fa=1
220 for x=a to b step dx
230 :  x2=int(kx*(x-a)+h):gosub 1000
240 :  if fz=1 then fa=1:goto 300
250 :  if fa=1 then goto 290
260 :  y2=int(ky*(hp-y)+h)
270 :  line x1,y1,x2,y2,1
280 :  x1=x2:y1=y2:goto 300
290 :  x1=x2:y1=int(ky*(hp-y)+h):fa=0
300 next x
310 x1=0:y1=int(ky*hp+h):x2=320:y2=y1
320 if y1>0 and y1<=200 then line x1,y1,x2,y2,1
330 x1=int(kx*(-a)+h):y1=0:x2=x1:y2=200
340 if x1>0 and x1<=320 then line x1,y1,x2,y2,1
350 get a$:if a$="" then 350
360 end
1000 n=x*x-x-6:if n=0 then fz=1:return
1010 y=(x*x+3)/n
1100 if y<lp or y>hp then fz=1:return
1110 fz=0:return

