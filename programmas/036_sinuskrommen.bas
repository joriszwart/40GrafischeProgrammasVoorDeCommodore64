100 rem programma 14 sinuskrommen in cirkels
110 print chr$(147)
120 hires 0,1
130 u=160:v=100:h=0.5:rd=~/180
140 for k=-40 to 40 step 10
150 : for w=0 to 360 step 2
160 :   p=w*rd:gosub 1000
170 :   x=int(u+r*cos(p)+h)
180 :   y=int(v-r*sin(p)+h)
190 :   if p=0 then x1=x:y1=y:goto 230
200 :   x2=x:y2=y
210 :   line x1,y1,x2,y2,1
220 :   x1=x2:y1=y2
230 : next w
240 next k
250 get a$:if a$="" then 250
260 end
1000 r=60 + k*sin(4*p)
1010 return

