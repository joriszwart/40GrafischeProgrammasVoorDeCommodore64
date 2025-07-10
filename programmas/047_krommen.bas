100 rem programma 21 symmetrische krommen
110 print chr$(147)
120 input "toets a,b,c in";a,b,c
130 u=160:v=100:h=0.5:rd=~/180:k=100
140 print chr$(147)
150 hires 0,1
160 for w=0 to 360
170 : t=w*rd:r=k*sin(c*t)
180 : x2=int(u+r*cos(a*t)+h)
190 : y2=int(v-r*sin(b*t)+h)
200 : if w=0 then x1=x2:y1=y2:goto 230
210 : line x1,y1,x2,y2,1
220 : x1=x2:y1=y2
230 next w
240 get a$:if a$="" then 240
250 end

