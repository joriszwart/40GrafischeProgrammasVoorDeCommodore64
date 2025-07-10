100 rem programma 12 grafiek van de funktie r=100*cos(4*phi)
110 print chr$(147)
120 hires 0,1
130 u=160:v=100:h=0.5:rd=~/180:k=100
140 for w=0 to 360 step 3
150 : p=w*rd:gosub 1000
160 : x=int(u+k*r*cos(p)+h)
170 : y=int(v-k*r*sin(p)+h)
175 : if p=0 then x1=x:y1=y:goto 210
180 : x2=x:y2=y
190 : line x1,y1,x2,y2,1
200 : x1=x2:y1=y2
210 next w
220 get a$:if a$="" then 220
230 end
1000 : r=cos(4*p):r=abs(r)
1010 return

