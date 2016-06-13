//Honer's Method
//Algorithm 2.7 P90
//P(x)=2x^3+5x^2-4x+9 , x0=3.2
//y=P(x0) , z=P'(x0)

clear;

a=[9 -4 5 2];
d=4;
x0=3.2;
y=a(d);
z=a(d);
j=d-1;
for i=2:d-1
y=x0*y+a(j);
z=x0*z+y;
j=j-1;
end
y=x0*y+a(1);
disp('P(x0)');
disp(y);
disp('dP(x0)');
disp(z);


