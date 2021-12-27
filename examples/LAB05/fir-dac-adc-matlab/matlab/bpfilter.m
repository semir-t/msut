function y = bpfilter(x,coeff,Ns,Nfc)

y = zeros(1,Ns);

x = [zeros(1,Nfc/2) x zeros(1,Nfc/2) ];
for k=1:Ns
    f_tmp = 0;
    for n=1:Nfc
        f_tmp = f_tmp + coeff(n)*x(k+n-1);
    end
    y(k) = f_tmp;
end
% y = y(Nfc/2:Ns+Nfc/2);
