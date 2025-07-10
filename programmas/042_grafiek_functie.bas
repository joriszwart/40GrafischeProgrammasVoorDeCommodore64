100 rem programma 17 grafiek van de functie r=f(phi)
110 print chr$(147)
120 input "linkergrens voor x  ";a
130 input "rechtergrens voor x ";b
140 input "ondergrens voor y   ";lp
150 input "bovengrens voor y   ";hp
160 input "startwaarde voor phi";w0
170 input "eindwaarde voor phi ";wn
180 kx=320/(b-a):ky=200/(hp-lp):h=0.5:rd=~/180
190 print chr$(147)
200 hires 0,1
210 fa=1
220 for w=w0 to wn
230 : p=w*rd:gosub 1000
240 : if fz=1 then fa=1:goto 320
250 : if fa=1 then goto 290
260 : x2=int(kx*(x-a)+h)
270 : y2=int(ky*(hp-y)+h)
280 : line x1,y1,x2,y2,1:x1=x2:y1=y2:goto 320
290 : x1=int(kx*(x-a)+h)
300 : y1=int(ky*(hp-y)+h)
310 : fa=0
320 next w
330 get a$:if a$="" then 330
340 end
1000 n=1-2*cos(p):if n=0 then fz=1:return
1010 r=sin(3*p/2)/n
1100 x=r*cos(p):y=r*sin(p)
1110 if x<a or x>b or y<lp or y>hp then fz=1:return
1200 fz=0:return

