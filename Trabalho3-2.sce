clear
m1 =100
m2 =100 
k1= 100
k2= 100
k3= 100 
u=0
b= 100
x0 =[ 0.1 ;  0;0 ;0 ] ;          // condição inicial 
                         
tempototal = 40 ;       // em segundos
h = 0.01 ;                // passo de integração
n = tempototal / h ;       // numero de interações
t=0:h:tempototal;

t0 = t(1) ;   
function dxdt=dxdt(t, x)
    dxdt=[x(2) ;
          (-(k1+k2)*x(1)-b*x(2)+k2*x(3)+b*x(4)+u)/m1;
          x(4);
          (k2*x(1)+b*x(2)-(k2+k3)*x(3)-b*x(4))/m2
          ]
endfunction
x=ode(x0,t0,t,dxdt);

scf();
plot(t,x(1, :),'k', t,x(3,:),'r');
legend(['e(Volts)';'dx/dt(m/s)']);
xtitle('Sistema Mecanico massa-mola-amortecedor 0 N em u','t(s)','x1(m))');
//xtitle('Solução com uma exitação senoidal de 10 Volts de amplitude e 2 kHz','t(s)','x1(Volts))');
