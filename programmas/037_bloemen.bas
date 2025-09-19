100 rem programma 15 bloemen
110 print chr$(147)
120 hires 0,1
130 u=160:v=100:h=0.5:rd=~/180
140 n=4:c=0.25:rem eerst de bloemen
150 for k=30 to 80 step 10
160 : for w=0 to 360 step 3
170 :   p=w*rd:r=k*(1+c*abs(sin(n*p)))
180 :   x=int(u+r*cos(p)+h)
190 :   y=int(v-r*sin(p)+h)
200 :   if p=0 then x1=x:y1=y:goto 240
210 :   x2=x:y2=y
220 :   line x1,y1,x2,y2,1
230 :   x1=x2:y1=y2
240 : next w
250 next k
260 r=30:p1=(180/n)*rd:rem dan de stelen
270 for j=1 to n
280 : p=j*p1
290 : x1=int(u+r*cos(p)+h)
300 : y1=int(v-r*sin(p)+h)
310 : x2=int(u+r*cos(p+~)+h)
320 : y2=int(v-r*sin(p+~)+h)
330 : line x1,y1,x2,y2,1
340 next j
350 get a$:if a$="" then 350
360 end
