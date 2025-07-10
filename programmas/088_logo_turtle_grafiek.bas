  100 rem programma 32 turtle-grafiek(logo-2)
  110 print chr$(147)
  120 input "coordinaten startpunt ";x1,y1
  130 input "beginrichting (graden)";w
  140 input "verplaatsing          ";s
  150 input "draaihoek,linksom     ";dw
  160 input "toename zijde         ";ds
  170 h=0.5:rd=~/180:w1=w*rd
  180 print chr$(147)
  190 hires 0,1
  200 x2=int(x1+s*cos(w1)+h)
  210 y2=int(y1-s*sin(w1)+h)
  220 if x2<0 or x2>320 or y2<0 or y2>200 then 280
  230 line x1,y1,x2,y2,1
  240 x1=x2:y1=y2
  250 w=w+dw : if w>=360 then w=w-360
  260 w1=w*rd:s=s+ds
  270 goto 200
  280 get a$:if a$="" then 280
  290 end

