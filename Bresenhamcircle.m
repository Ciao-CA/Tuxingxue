function [X,Y]=Bresenhamcircle(x0,y0,r,color)
X=[];
Y=[];
X1=[];
Y1=[];
X2=[];
Y2=[];
X3=[];
Y3=[];
X4=[];
Y4=[];
X5=[];
Y5=[];
X6=[];
Y6=[];
X7=[];
Y7=[];
x=0;
y=r;
% X=x0;Y=y0+r;X1=x0;Y1=y0-r;X2=x0+r;Y2=y0;X3=x0-r;Y3=y0;X4=x0;Y4=y0+r;X5=x0;Y5=y0-r;X6=x0+r;Y6=y0;
% X7=x0-r;Y7=y0;
d=1-r;
xl=x+r/sqrt(2);
i=1;
while x<xl
    X(i)=x;
    Y(i)=y;
    X1(i)=-x;Y1(i)=-y;
    X2(i)=y;Y2(i)=x;
    X3(i)=-X2(i);Y3(i)=-Y2(i);
    X4(i)=-x;Y4(i)=y;
    X5(i)=x;Y5(i)=-y;
    X6(i)=y;Y6(i)=-x;
    X7(i)=X3(i);Y7(i)=Y2(i);
    if(d<0)
        d=d+2*x+3;
        x=x+1;
        y=y;
    else
        d=d+2*x-2*y+1;
        x=x+1;
        y=y-1;
    end
    i=i+1;
end
X=X+x0;Y=Y+y0;
X1=X1+x0;Y1=Y1+y0;
X2=X2+x0;Y2=Y2+y0;
X3=X3+x0;Y3=Y3+y0;
X4=X4+x0;Y4=Y4+y0;
X5=X5+x0;Y5=Y5+y0;
X6=X6+x0;Y6=Y6+y0;
X7=X7+x0;Y7=Y7+y0;
j=i;
for i=1:j-1
    plot(X(:,1:i),Y(:,1:i),color);
    plot(X1(:,1:i),Y1(:,1:i),color);
    plot(X2(:,1:i),Y2(:,1:i),color);
    plot(X3(:,1:i),Y3(:,1:i),color);
    plot(X4(:,1:i),Y4(:,1:i),color);
    plot(X5(:,1:i),Y5(:,1:i),color);
    plot(X6(:,1:i),Y6(:,1:i),color);
    plot(X7(:,1:i),Y7(:,1:i),color);
    hold on;
    pause(0.0002);
    axis([-100,100,-100,100]);
    grid on;
end

end
