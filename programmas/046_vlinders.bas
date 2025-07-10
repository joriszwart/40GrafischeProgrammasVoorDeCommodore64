100 rem programma 20 vlinders
110 print chr$(147)
120 u=160:v=100:h=0.5:rd=~/180
130 kx=10:ky=10
140 input "toets a en b in";a,b
150 print chr$(147)
160 hires 0,1
170 for n=-3 to 3
180 : for w=0 to 360 step 3
190 :   t=w*rd
200 :   x=(a+b)*cos(t)-n*b*cos((a+b)/b*t)
210 :   y=(a+b)*sin(t)-n*b*sin((a+b)/b*t)
220 :   xx=int(u+kx*x+h)
230 :   yy=int(v-ky*y+h)
240 :   if w=0 then x1=xx:y1=yy:goto 280
250 :   x2=xx:y2=yy
260 :   line x1,y1,x2,y2,1
270 :   x1=x2:y1=y2
280 : next w
290 next n
300 get a$:if a$="" then 300
310 end

