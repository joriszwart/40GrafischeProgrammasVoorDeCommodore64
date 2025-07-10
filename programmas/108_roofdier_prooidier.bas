100 rem programma 40 roofdier-prooidier-systeem
110 print chr$(147)
120 input "beginpopulatie prooidieren (200)";x
130 input "beginpopulatie roofdieren (20)  ";y
140 input "groeifactor prooidieren (.3)    ";a
150 input "afnamefactor prooidieren (.01)  ";b
160 input "groeifactor roofdieren (.002)   ";c
170 input "afnamefactor roofdieren (.5)    ";d
180 print chr$(147)
190 hires 0,1
200 k=0.3:h=0.5:v=200
210 for x1=0 to 320 step 10
220 : xp=x+(a*x-b*x*y):yr=y+(c*x*y-d*y)
230 : rem pop.prooidieren tekenen
240 : y1=int(v-k*x+h)
250 : x2=x1+10:y2=int(v-k*xp+h)
260 : if y2<0 or y2>200 then 350
270 : line x1,y1,x2,y2,1
280 : rem pop.roofdieren tekenen
290 : y1=int(v-k*y+h)
300 : x2=x1+10:y2=int(v-k*yr+h)
310 : if y2<0 or y2>200 then 350
320 : line x1,y1,x2,y2,1
330 : x=xp:y=yr
340 next x1
350 get a$:if a$="" then 350
360 end

