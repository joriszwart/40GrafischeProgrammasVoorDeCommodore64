100 rem programma 31 vierkantpatroon(logo-1)
110 input "coordinaten startpunt ";x1,y1
120 input "beginrichting (graden)";w
130 input "verplaatsing          ";s1
140 input "draaihoek,linksom     ";dw
150 input "zijde vierkant        ";s2
160 input "aantal vierkanten     ";n
170 h=0.5:rd=~/180:w1=w*rd
180 print chr$(147)
190 hires 0,1
200 for j=1 to n
210 : x2=int(x1+s1*cos(w1)+h)
220 : y2=int(y1-s1*sin(w1)+h)
230 : line x1,y1,x2,y2,1:x1=x2:y1=y2
240 : ax=x1:ay=y1
250 : w=w+dw:if w>360 then w=w-360
260 : w1=w*rd
261 : for k=0 to 2
270 :   x2=int(x1+s2*cos(w1+k/2*~)+h)
280 :   y2=int(y1-s2*sin(w1+k/2*~)+h)
290 :   line x1,y1,x2,y2,1:x1=x2:y1=y2
291 : next k
360 : line x1,y1,ax,ay,1:x1=ax:y1=ay
370 next j
380 get a$:if a$="" then 380
390 end

