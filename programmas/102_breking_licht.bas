100 rem programma 38 breking van licht
110 print chr$(147)
120 input "brekingsindex n";n
130 v=100:h=0.5:rd=~/180
140 hires 0,1
150 line 0,v,320,v,1
160 line 0,190,320,190,1
170 line 320,190,320,10,1
180 line 320,10,0,10,1
190 line 0,10,0,190,1
200 rem stralen in medium 1 en 2 tekenen
210 rem b=beta in graden;b1=beta in radialen
220 rem a1=alfa in readialen; sa=sin(a1)
230 b=b+3:b1=b*rd:x1=0:y1=190
240 x2=int(90*tan(b1)+h):y2=v
250 if x2>320 then 400
260 line x1,y1,x2,y2,1:x1=x2:y1=y2
270 rem sin(alfa) en alfa berekenen
280 rem controle op totale reflectie
290 s=n*sin(b1):if s>1 then 350
300 a1=atn(s/sqr(1-s*s))
310 x2=int(x1+90*tan(a1)+h):y2=10
320 if x2<320 then line x1,y1,x2,y2,1:goto 230
330 x2=320:y2=int(v-(320-x1)/tan(a1)+h)
340 line x1,y1,x2,y2,1:goto 230
350 rem totale terugkaatsing
360 x2=x1+x1:y2=190
370 if x2<320 then line x1,y1,x2,y2,1:goto 230
380 x2=320:y2=int(v+(320-x1)/tan(b1)+h)
390 line x1,y1,x2,y2,1:goto 230
400 get a$:if a$="" then 400
410 end

