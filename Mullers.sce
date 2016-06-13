//Muller's Method
//Algorithm 2.8 P93
//Example 3 P94 part(a) in Table 2.13
//f(x)=16x^4-40x^3+5x^2+20x+6 , error=10^(-5) , p0=0.5 p1=-0.5 p2=0

clear;

function [y]=f(x)
y=16*x^4-40*x^3+5*x^2+20*x+6;
endfunction
p=[0.5 -0.5 0];
c=10^(-5);
n=30;

h1=p(2)-p(1);
h2=p(3)-p(2);
o1=(f(p(2))-f(p(1)))/h1;
o2=(f(p(3))-f(p(2)))/h2;
d=(o2-o1)/(h2+h1);
i=4;
b=o2+h2*d;
D=(b^2-4*f(p(3))*d)^(1/2);
if abs(b-D)<abs(b+D)
E=b+D;
else
E=b-D;
end
h=-2*f(p(3))/E;
p(i)=p(3)+h;
disp('the results for each execution')
while abs(h)>c & i-2<n
disp(p(i));
p(1)=p(2);
p(2)=p(3);
p(3)=p(i);
h1=p(2)-p(1);
h2=p(3)-p(2);
o1=(f(p(2))-f(p(1)))/h1;
o2=(f(p(3))-f(p(2)))/h2;
d=(o2-o1)/(h2+h1);
i=i+1;
b=o2+h2*d;
D=(b^2-4*f(p(3))*d)^(1/2);
if abs(b-D)<abs(b+D)
E=b+D;
else
E=b-D;
end
h=-2*f(p(3))/E;
p(i)=p(3)+h;
end
disp(p(i));

p(1)=0.5;
p(2)=-0.5;
p(3)=0;
s=1:i;
 subplot(2,1,1);
 plot(s,p(s),'.');
 title('Compare with 16x^4-40x^3+5x^2+20x+6,Kuei-Jung Hu','color','g','fontsize',3);
 legend('x:the number of executions','y:the value of P');
 subplot(2,1,2);
 plot(s,abs(f(p(s))),'.');
 title('Compare with 16x^4-40x^3+5x^2+20x+6,Kuei-Jung Hu','color','g','fontsize',3);
 legend('x:the number of executions','y:the value of |f(P)|');


