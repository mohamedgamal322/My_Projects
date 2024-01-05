clc;
clear;
s=1;
while s==1
clear;
    x1=input("Hello, my friend. how can i serve you ^-^??['+','-','*','/','sin','cos','sinh','cosh','tan','ln','^']: ",'s');
if (isnumeric(x1))
    disp('Sorry, I Can not do this :(')
else
switch x1
    case '+'
        y1=input("enter the first num: ");
        y2=input("enter the second num: ");
        z=y1+y2
        j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
        z5=real(y1);
        z6=imag(y1);
        plot([0 z5],[0 z6],'r')
        hold on
        z7=real(y2);
        z8=imag(y2);
        plot([0 z7],[0 z8],'k')
        z3=real(z);
        z4=imag(z);
        hold on
        plot([0 z3],[0 z4],'b')
        legend('1st num','2end num','result')
        hold off
        end
    case '-'
        y1=input("enter the first num: ");
        y2=input("enter the second num: ");
        z=y1-y2
         j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
        z5=real(y1);
        z6=imag(y1);
        plot([0 z5],[0 z6],'r')
        hold on
        z7=real(y2);
        z8=imag(y2);
        plot([0 z7],[0 z8],'k')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('1st num','2end num','result')
        hold off
        end
    case '*'
        y1=input("enter the first num: ");
        y2=input("enter the second num: ");
        z=y1*y2
         j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
         z5=real(y1);
        z6=imag(y1);
        plot([0 z5],[0 z6],'r')
        hold on
        z7=real(y2);
        z8=imag(y2);
        plot([0 z7],[0 z8],'k')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('1st num','2end num','result')
        hold off
        end
    case '/'
        y1=input("enter the first num: ");
        y2=input("enter the second num: ");
        z=y1/y2
         j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
        z5=real(y1);
        z6=imag(y1);
        plot([0 z5],[0 z6],'r')
        hold on
        z7=real(y2);
        z8=imag(y2);
        plot([0 z7],[0 z8],'k')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('1st num','2end num','result')
        hold off
        end
    case 'cos'
         y=input("enter the num: ");
         z=(exp(i*y)+exp(-i*y))/2
          j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
          z5=real(y);
        z6=imag(y);
        plot([0 z5],[0 z6],'r')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('num','result')
        hold off
        end
    case 'sin'
         y=input("enter the num: ");
         z=(exp(i*y)-exp(-i*y))/(2*i)
        j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
         z5=real(y);
        z6=imag(y);
        plot([0 z5],[0 z6],'r')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('num','result')
        hold off
        end
    case 'cosh'
         y=input("enter the num: ");
         z=(exp(y)+exp(-y))/2
         j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
         z5=real(y);
        z6=imag(y);
        plot([0 z5],[0 z6],'r')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('num','result')
        hold off
        end
    case 'sinh'
         y=input("enter the num: ");
         z=(exp(y)-exp(-y))/2
          j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
         z5=real(y);
        z6=imag(y);
        plot([0 z5],[0 z6],'r')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('num','result')
        hold off
        end
    case 'tan'
         y=input("enter the num: ");
         z0=(exp(i*y)+exp(-i*y))/2 ;
         z1=(exp(i*y)-exp(-i*y))/(2*i);
          j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
         z=z1/z0
        z5=real(y);
        z6=imag(y);
        plot([0 z5],[0 z6],'r')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('num','result')
        hold off
        end
    case 'ln'
         y=input("enter the num: ");
         x=real(y);
         l=imag(y);
         r=sqrt(x^2+l^2);
         th=atand(l/x);
         z=log(r)+(i*th)
         j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
         z5=real(y);
        z6=imag(y);
        plot([0 z5],[0 z6],'r')
        hold on
        z3=real(z);
        z4=imag(z);
         plot([0 z3],[0 z4],'b')
        legend('num','result')
        hold off
        end
    case '^'
%%%%%%%%%%%% Roots Code Project
z=input("enter the complex number:");
n=input("enter the numerator of the power:");
m=input("enter the denominator of the power:");
x=real(z);
y=imag(z);
r=sqrt(x^2+y^2);
th=angle(z)*(180/pi);
a=1;
for k=0:m-1
    theta(a)=(th+360*k)/(m/n);
    while (theta(a)>360)
        theta(a)=theta(a)-360;
    end
    a=a+1;
end
disp(theta)
disp('The result: ')
w=r^(n/m)*(cosd(theta)+i*sind(theta));
disp(w)
 j=input("I can also show you the graph, do you need it??  (1/0)");
        if j==1
%%%%%%%%%% polar plot
subplot(2,1,1);

polar([0 ((theta(1)*pi)/180)+2*pi],[0 r^(n/m)],'r')
title("polar form");
hold on
for i=2:m
    polar([0 ((theta(i)*pi)/180)+2*pi],[0 r^(n/m)],'r');
end
thetacircle=[0:0.01:2*pi];
b=r^(n/m)*cos(thetacircle);
c=r^(n/m)*sin(thetacircle);
[thetacircle rho]=cart2pol(b,c);
polar(thetacircle,rho,'r');
hold off
%%%%%%%%%%% Cartesian Coordiantes Plot
subplot(2,1,2);
xc=real(w(1));
yc=imag(w(1));
plot([0 xc],[0,yc] ,'r')
title("cartezien form");
hold on
for i=2:m
    plot([ 0 real(w(i))],[0 imag(w(i))] , 'r')
end 
hold off
        end
    otherwise
        disp("sorry, i can't do this  :(");
end
end
s=input("Do you want to go again ?? (1/0)");
end