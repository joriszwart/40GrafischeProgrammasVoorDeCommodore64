100 rem programma 22 kubus met 8=vlak
110 print chr$(147)
120 input "alpha in graden (45)   ";a
130 input "verkleiningsfactor (,5)";k
140 u=160:v=100:h=0.5:rd=~/180
150 w=a*rd:c=k*cos(w):s=k*sin(w)
160 dim x(14),y(14),z$(2)
170 for j=1 to 14
180 : read x,y,z
190 : x(j)=int(u+x+c*y+h)
200 : y(j)=int(v-s*y-z+h)
210 next j
220 print chr$(147)
230 hires 0,1
240 for n=1 to 2
250 : read z$(n):l=len(z$(n))
260 : for m=1 to l-1 step 2
270 :   i=asc(mid$(zs(n),m,1))-64
280 :   j=asc(mid$(z$(n),m+1,1))-64
290 :   line x(i),y(i),x(j),y(j)
300 : next m
310 next n
320 get a$:if a$="" then 320
330 end
340 : data -60,-60,-60, 60,-60,-60
350 : data  60, 60,-60,-60, 60,-60
360 : data -60,-60, 60, 60,-60, 60
370 : data  60, 60, 60,-60, 60, 60
380 : data   0,  0,-60,  0,-60,  0,60,0,0
390 : data   0, 60,  0,-60,  0,  0,0,0,60
400 : data "abbccddaaebfcgdheffgghhe"
410 : data "ijikilimjkkllmmjjnknlnmn"

