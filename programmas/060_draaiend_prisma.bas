100 rem programma 26 draaiend prisma
110 print chr$(147)
120 input "alpha in graden (45)   ";a
130 input "verkleiningsfactor (.5)";k
140 input "draaihoek in gragen(45)";om
150 u=160:v=100:h=0.5:rd=~/180:r=80
160 w=a*rd:c=k*cos(w):s=k*sin(w)
170 print chr$(147)
180 hires 7,8
190 line u,0,u,200,1
200 dim x(7),y(7)
210 for w=0 to 360 step om
220 : for j=0 to 3
230 :   w1=(w+j*120)*rd
240 :   x=r*cos(w1):y=r*sin(w1)
250 :   x(j)=int(u+x+c*y+h)
260 :   y(j)=int(v-s*y+60+h)
270 :   x(j+4)=x(j)
280 :   y(j+4)=int(v-s*y-60+h)
290 : next j
300 :
310 : for j=0 to 2
320 :   line x(j),y(j),x(j+1),y(j+1),1
330 :   line x(j),y(j),x(j+4),y(j+4),1
340 :   line x(j+4),y(j+4),x(j+5),y(j+5),1
350 : next j
360 next w
370 get a$:if a$="" then 370
380 end

