100 rem programma 18 lissajousfiguren
110 print chr$(147)
120 print "toets k1,f1,p1,k2,f2 in";
130 input k1,f1,p1,k2,f2
140 print:print
150 print "toets k3,f3,p3,k4,f4 in";
160 input k3,f3,p3,k4,f4
170 u=160:v=100:h=0.5:rd=~/180
180 print chr$(147)
190 hires 0,1
200 for w=0 to 360
210 : t=w*rd:gosub 1000
220 : x=int(u+x+h)
230 : y=sint(v-y+h)
240 : if w=0 then x1=x:y1=y:goto 280
250 : x2=x:y2=y
260 : line x1,y1,x2,y2,1
270 : x1=x2:y1=y2
280 next w
290 get a$:if a$="" then 290
300 end
1000 x=k1*sin(f1*t+p1)+k2*cos(f2*t)
1010 y=k3*sin(f3*t+p3)+k4*cos(f4*t)
1020 return

