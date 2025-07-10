100 rem programma 16 spiralen
110 print chr$(147)
120 hires 0,1
140 c=3
150 for w=0 to 10000 step 3
160 : p=w*rd:gosub 1000
170 : x=int(u+r*cos(p)+h)
180 : y=int(v-r*sin(p)+h)
190 : if p=0 then x1=x:y1=y:goto 240
200 : if x<0 or x>320 or y<0 or y>200 then 250
210 : x2=x:y2=y
220 : line x1,y1,x2,y2,1
230 : x1=x2:y1=y2
240 next w
250 get a$:if a$="" then 250
260 :
1000 r=c*p
1010 return

