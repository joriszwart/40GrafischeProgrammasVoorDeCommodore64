100 rem programma 10 oppervlak onder een kromme
110 print chr$(147)
120 hires 0,1
130 v=100:h=0.5:k=80:c=2*~/320
140 for j=0 to 320
150 : x=j*c-~:gosub 1000
160 : y=int(v-k*y+h)
170 : line j,v,j,y,1
180 next j
190 get a$:if a$="" then 190
200 end
1000 y=cos(x)-cos(3*x)/3+cos(5*x)/5-cos(7*x)/7
1010 return

