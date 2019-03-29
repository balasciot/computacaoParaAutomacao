clear
m1 =100
m2 =100 
k1= 100
k2= 100
k3= 100 
u=10
b= 100
x0 =[ 0.1 ;  0.00;0 ;0 ] ;          // condição inicial 
                         
tempototal = 40 ;       // em segundos
h = 0.01 ;                // passo de integração
n = tempototal / h ;       // numero de interações
t=0:h:tempototal;

t0 = t(1) ;   
function dxdt=dxdt(t, x)
    dxdt=[ x(2) ;
              (-(k1+k2)*x1-b*x2+k2*x3+b8x4+u)] //*
endfunction
x=ode(x0,t0,t,dxdt);

scf();
plot(t,x(1, :),'k');
legend(['e(Volts)';'dx/dt(m/s)']);
xtitle('Solução com uma exitação senoidal de 10 Vcc em u','t(s)','x1(Volts))');
//xtitle('Solução com uma exitação senoidal de 10 Volts de amplitude e 2 kHz','t(s)','x1(Volts))');
