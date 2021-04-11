clear variables
%question 1 
Q1 = 1;  %first charge in Coulombs
Q2 = -1;  %second charge in Coulombs

k = 1/(4*pi*8.85*10^-12*(1*10^-3));

r1 = [0,1,0];   %vector position of first charge 
r2 = [0,-1,0];   %vector position of second charge 

[x, y, z] = meshgrid(-4:0.1:4, -4:0.1:4, -4:0.1:4);

d1 = ((x-r1(1)).^2+(y-r1(2)).^2+(z-r1(3)).^2).^0.5;  %distance  
d2 = ((x-r2(1)).^2+(y-r2(2)).^2+(z-r2(3)).^2).^0.5;

V1 = (k*Q1)/d1;   %potential first charge 
V2 = (k*Q2)/d2;   %potential second charge

Vexact = V1+V2;   %total electric potential 

surf(x(:,:,41), y(:,:,41), Vexact(:,:,41))

hold on 

%question 2 
Matrix_element = ((([1, -0.8, 3.5]+4)*10)+1);

%question 3 
[row, col] = find(isnan(Vexact));  %gives zero therefore none

[row, col] = find(isinf(Vexact));   %gives row=31,51 (corresponds to values
%-1 and 1) col=3281, 3281 (corresponds to ???)

%question 4
[X, Y, Z] = meshgrid(-4.05:0.1:4.05, -4.05:0.1:4.05, -4:0.1:4);

d12 = ((X-r1(1)).^2+(Y-r1(2)).^2+(Z-r1(3)).^2).^0.5;  %distance  
d22 = ((X-r2(1)).^2+(Y-r2(2)).^2+(Z-r2(3)).^2).^0.5;

V12 = (k*Q1)/d12;   %potential first charge 
V22 = (k*Q2)/d22;   %potential second charge

Vexact2 = V12+V22; 

surf(X(:,:,41), Y(:,:,41), Vexact2(:,:,41))

hold on 

%question 5 
%r=(X.^2+Y.^2+Z.^2).^0.5; 
%Vapprox = (k*(2*Y))./r.^2; 

Vapprox = k*Q1*((d22-d12)/d12*d22) 

%question 6 
Difference = Vexact2 - Vapprox; 
surf(X(:,:,41), Y(:,:,41), Difference(:,:,41))

hold on 

%question 7 
[Ex, Ey, Ez] = gradient(Vexact2);

%question 8 
%x_=[-1.55:0.1:1.55];
%y_=[-1.55:0.1:1.55];
%[x_, y_] = meshgrid(-1.55:0.1:1.55, -1.55:0.1:1.55);
%quiver(x_,y_,Ex,Ey)

%[X, Y, Z] = meshgrid(-4.05:0.1:4.05, -4.05:0.1:4.05, -4:0.1:4);
%xlim([-1.55 1.55])
%ylim([-1.55 1.55])

[x_, y_, z_] = meshgrid(-1.55:0.1:1.55, -1.55:0.1:1.55, -1.55:0.1:1.55);

d1_ = ((x_-r1(1)).^2+(y_-r1(2)).^2+(z_-r1(3)).^2).^0.5;  %distance  
d2_ = ((x_-r2(1)).^2+(y_-r2(2)).^2+(z_-r2(3)).^2).^0.5;

V1_ = (k*Q1)/d1_;   %potential first charge 
V2_ = (k*Q2)/d2_;   %potential second charge

Vexact_ = V1_+V2_;   %total electric potential 
[Ex_, Ey_, Ez_] = gradient(Vexact_);

quiver(x_,y_,Ex_,Ey_)