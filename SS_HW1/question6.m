clear;
clc;

N = [-50 50];
n = -50 : 50;
s = (n >= -10 ) - (n >= 11) ;
x1 = exp (j*pi*n/12);
x = s.* x1;
u = (n >= 0 ) - (n >= 1);

y2 = system02(x, N);
y4 = system04(x, N);
y5 = system05(x, N);
y6 = system06(x, N);
y8 = system08(x, N);

U2 = system02(u,N);
U4 = system04(u,N);
U5 = system05(u,N);
U6 = system06(u,N);
U8 = system08(u,N);

Y2 = conv(x,U2);
Y4 = conv(x,U4);
Y5 = conv(x,U5);
Y6 = conv(x,U6);
Y8 = conv(x,U8);

for index = 1:101
    YY2(index) = Y2(index+50);

    YY4(index) = Y4(index+50);

    YY5(index) = Y5(index+50);

    YY6(index) = Y6(index+50);

    YY8(index) = Y8(index+50);
end
YYY2 = y2 - YY2;
YYY4 = y4 - YY4;
YYY5 = y5 - YY5;
YYY6 = y6 - YY6;
YYY8 = y8 - YY8;
subplot(5,1,1);
stem(n , YYY2)
subplot(5,1,2);
stem(n , YYY4)
subplot(5,1,3);
stem(n , YYY5)
subplot(5,1,4);
stem(n , YYY6)
subplot(5,1,5);
stem(n , YYY8)