100 rem programma 9 paraboolstelsel
110 print chr$(147)
120 hires 0,1
130 u=160:v=100:h=0.5
140 for k=-100 to 100 step 10
150 : for x=-110 to 110 step 5
160 :   xx=int(u+x+h)
170 :   y=-k*x*x/6400+k:y=int(v-y+h)
180 :   if x=-110 then x1=xx:y1=y:goto220
190 :   x2=xx:y2=y
200 :   line x1,y1,x2,y2,1
210 :   x1=x2:y1=y2
220 : next x
230 next k
240 get a$:if a$="" then 240 i
250 end

