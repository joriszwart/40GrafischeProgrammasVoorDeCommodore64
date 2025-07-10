100 rem programma 19 vliegenkop
110 print chr$(147)
120 hires 0,1
130 u=160:v=100:h=0.5:k=30:rd=~/180
140 for w=90 to 450 step 3
150 : t=w*rd:gosub 1000
160 : x=int(u+x+h)
170 : y=int(v-y+h)
180 : if w=90 then x1=x:y1=y:goto 220
190 : x2=x:y2=y
200 : line x1,y1,x2,y2,1
210 : x1=x2:y1=y2
220 next w
221 circle 120,100,10,10,1
222 circle 200,100,10,10,1
223 paint 105,100,1
224 paint 215,100,1
230 get a$:if a$="" then 230
240 end
1000 x=k*sin(2*t)*(2.5+cos(3*t))
1010 y=k*2*cos(3*t)
1020 return

