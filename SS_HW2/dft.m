function y = dft(x_n)
n=length(x_n);
y=zeros(1,n);
for kk = 1:n
    for nn=1:n
        y(kk)=y(kk)+x_n(nn)*exp(-1*j*(nn-1)*2*pi/n*(kk-1));
    end
end
for kk = 1:n
    y(kk)=(1/n)*y(kk);
end