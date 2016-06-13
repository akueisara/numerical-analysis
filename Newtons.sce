//f(x)=x-0.8-0.2sin(x),[a,b]=[0,pi/2],error=10^(-6)

clear;

function [y]=f(x) 
y=x-0.8-0.2*sin(x); //f(x)
endfunction
function [y]=g(x) 
y=1-0.2*cos(x); //f'(x)
endfunction

p=[0 0];
t=[0 0];
m=1;
c=10^(-6);
p(1)=0;
k=30;           //the maximum
p(2)=p(1)-f(p(1))/g(p(1));
t(1)=abs(f(p(1)));
if p(1)<0 | p(1)>%pi/2;
  disp('the value is outside of the domain')
else
  disp('The following are the results for each time')
  while abs(f(p(m+1)))>c & m<k
   disp(p(m+1))
   t(m+1)=abs(f(p(m+1)));
   m=m+1;
   p(m+1)=p(m)-f(p(m))/g(p(m));
  end
 t(m+1)=abs(f(p(m+1)));
 disp('The function is x-0.8-0.2sin(x)')
 disp('The interval is [0,pi/2]')
 disp('The deviation value:')
 disp(c)
 disp('The total number')
 disp(m)
 disp('The solution using Newtons Method:')
 disp(p(m+1))
 s=1:m+1;
 subplot(2,1,1);
 plot(s,p(s),'.');
 title('Kuei-Jung Hu','color','g','fontsize',3);
 legend('x:the number of executions','y:the value of P');
 subplot(2,1,2);
 plot(s,t(s),'.');
 title('Kuei-Jung Hu','color','g','fontsize',3);
 legend('x:the number of executions','y:the value of |f(P)|');
end
