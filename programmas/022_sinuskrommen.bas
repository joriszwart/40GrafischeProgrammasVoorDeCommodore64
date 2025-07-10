100 rem programma 8 10 sinuskrommen
110 print chr$(147)
120 hires 0,1
130 v=100:k=100:h=0.5:p=~/9:c=2*~/320
140 for n=0 to 9
150 : for j=0 to 320 step 5
160 :   x=j*c:y=int(v-k*sin(x+n*p)+h)
170 :   if j=0 then x1=j:y1=y:goto 210
180 :   x2=j:y2=y
190 :   line x1,y1,x2,y2,1
200 :   x1=x2:y1=y2
210 : next j
220 next n
230 get a$:if a$="" then 230
240 end

