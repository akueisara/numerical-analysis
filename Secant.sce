//x=cosx , p0=0.5 p1=%pi/4 , error=10^(-6)

clear;

function [y]=f(x)
y=cos(x)-x; //f(x)
endfunction
p=[0.5 %pi/4]; //initial approximations p0,p1
q=[0 0];
i=3;  //
c=10^(-6); //tolerance TOL
n=30;      

q(1)=f(p(1));
q(2)=f(p(2));
p(i)=p(2)-q(2)*(p(2)-p(1))/(q(2)-q(1));
disp('The following are the results for each time')
while abs(p(i)-p(1))>c & i-2<n
  disp(p(i));
  p(1)=p(2);
  q(1)=q(2);
  p(2)=p(i);
  q(2)=f(p(i));
  i=i+1;
  p(i)=p(2)-q(2)*(p(2)-p(1))/(q(2)-q(1));
end
disp(p(i));
p(1)=0.5;
p(2)=%pi/4;
s=1:i;
 subplot(2,1,1);
 plot(s,p(s),'.');
 title('Compare with cos(x)-x,Kuei-Jung Hu','color','g','fontsize',3);
 legend('x:the number of executions','y:the value of P');
 subplot(2,1,2);
 plot(s,abs(f(p(s))),'.');
 title('Compare with cos(x)-x,Kuei-Jung Hu','color','g','fontsize',3);
 legend('x:the number of executions','y:the value of |f(P)|');


