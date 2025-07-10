100 rem programma 35 cirkelfiguur-2 (logo-5)
105 print chr$(147)
110 input "coordinaten startpunt ";x1,y1
120 input "beginrichting (graden)";w
130 input "lengte van de steel   ";l
140 input "straal van de cirkel  ";r
150 input "draaihoek,linksom     ";dw
160 h=0.5:rd=~/180:w1=w*rd
170 print chr$(147)
180 hires 0,1
190 for j=1 to 4
200 : x2=int(x1+l*cos(w1)+h)
210 : y2=int(y1-l*sin(w1)+h)
220 : line x1,y1,x2,y2,1
230 : ax=x2:ay=y2
235 : rem cirkel m(u,v) en straal r
236 : u=int(ax+r*cos(w1)+h)
240 : v=int(ay-r*sin(w1)+h)
250 : x1=ax:y1=ay
260 : for ww=(w1-~) to (w1+~) step ~/32
270 :   x2=int(u+r*cos(ww)+h)
280 :   y2=int(v-r*sin(ww)+h)
290 :   line x1,y1,x2,y2,1:x1=x2:y1=y2
300 : next ww
310 : w=w+90:if w>=360 then w=w-360
320 : w1=w*rd:x1=ax:y1=ay
330 next j
340 w=w+dw:if w>=360 then w=w-360
350 w1=w*rd
360 goto 190
370 end

