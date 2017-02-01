clear;
clc;

N = [-50 50];
n = -50 : 50;
s = (n >= -10 ) - (n >= 11) ;
x1 = exp (j*pi*n/12);
x = s.* x1;
u = (n >= 0 ) - (n >= 1);

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

subplot(5,1,1);
stem(n , YY2)
subplot(5,1,2);
stem(n , YY4)
subplot(5,1,3);
stem(n , YY5)
subplot(5,1,4);
stem(n , YY6)
subplot(5,1,5);
stem(n , YY8)