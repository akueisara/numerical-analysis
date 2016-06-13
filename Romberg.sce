//Romberg
//Algorithm 4.2 P209
//Example 2 P210 Table4.10

clear;
function [y]=f(x)
y=sin(x)
endfunction
a=0;
b=%pi;
n=6;
h=b-a;
R(1,1)=0; //set it to 0 because sin(%pi) should be 0 but it has the difference
for i=2:n
s=0;
for k=1:2^(i-2)
s=s+f(a+(k-0.5)*h);
end
R(i,1)=(R(i-1,1)+h*s)/2;
for j=2:i
R(i,j)=R(i,j-1)+(R(i,j-1)-R(i-1,j-1))/(4^(j-1)-1);
end
h=h/2;
end
R
