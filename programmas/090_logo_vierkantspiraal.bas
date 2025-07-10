100 rem programma 33 vierkantspiraal(logo-3)
110 input "coordinaten startpunt ";x1,y1
120 input "beginrichting (graden)";w
130 input "zijde beginvierkant   ";s
140 input "draaihoek,linksom     ";dw
150 input "toename zijde         ";ds
160 h=0.5:rd=~/180:w1=w*rd
170 print chr$(147)
180 hires 0,1
190 ax=x1:ay=y1
200 for fase=0 to ~ step ~/2
210 : gosub 1000
220 : if vlag=1 then stop
230 : line x1,y1,x2,y2,1:x1=x2:y1=y2
240 next fase
250 line x1,y1,ax,ay,1:x1=ax:y1=ay
260 w=w+dw:if w>=360 then w=w-360
270 w1=w*rd:s=s+ds
280 goto 200
290 get a$:if a$="" then 290
300 end
305 :
1000 x2=int(x1+s*cos(w1+fase)+h)
1010 y2=int(y1-s*sin(wi+fase)+h)
1020 if x2<0 or x2>320 or y2<0 or y2>200 then vlag=1
1030 return

