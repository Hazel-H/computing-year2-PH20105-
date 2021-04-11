 %Matlab assessment part 1 
 x = (20-(3-(7^(2+1i*pi*cos(pi/3))))); %1
 v1 = transpose(1:10);  %2
 imag(x+(2+1i)*v1(5));  %3
 v2 = v1.^2;    %4 
 dot(v1,v2);    %5
 Matrix1 = randi([2 10], 15, 10);  %6 
 det(Matrix1(1:10,1:10));   %7
 sum(Matrix1(:)>5);      %8 
 max(Matrix1(:,3))       %9
 plot(0: pi/100: 2*pi, sin(0:pi/100:2*pi), 'r');   %10
 Matrix2 = (Matrix1(1:10,1:10))+ transpose(Matrix1(1:10,1:10));  %11
 max(eig(Matrix2))  %12
 trapz(2:1/1000:5, (1+(2:1/1000:5)).^2)   %13
