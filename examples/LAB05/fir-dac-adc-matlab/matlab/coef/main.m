try
    fclose(fid);
end

close all
clear all
clc

% fid = serial('/dev/ttyUSB3','BaudRate',921600,'InputBufferSize',2048);
fid = serial('/dev/ttyUSB2','BaudRate',921600,'InputBufferSize',2048);
fopen(fid);

fs = 40000;
N = 1024;
y = zeros(1,N/2);
data = zeros(1,N);
    
cdata = 0;
k = 0;
ycum = 0;
while(1)

    flushinput(fid);
    fwrite(fid,cdata,'uint8');
    data = fread(fid,N,'uint8');
   
    
    for n=1:N/2
        tmp = double(data(2*n-1))*256+ double(data(2*n));
        y(n) = tmp;
    end
    

    M = round(N/4);
    subplot(2,2,1);
    y1 = 3.*y(1:M)/4095;
    t = linspace(0,M/fs,M)*1000;
    plot(t,y1);
    xlabel('ms');
    ylabel('ORG V');
    axis([0 t(end) 0 1]);
    
    y1(1) = 0;
    subplot(2,2,2); 
    M = round(N/4);
    Y = abs(fft(y1))/M;
    M = round(N/8);
    Y = Y(1:M);
    f = linspace(0,fs/4,M)/1000;
    plot(f,Y,'r'); 
    ylabel('V/Hz'); 
    xlabel('kHz');
    axis([0 f(end) 0 0.5]);
    
    subplot(2,2,3);
    M = round(N/4);
    y2 = 3*y(N/4+1:end)/4095;
    t = linspace(0,M*1/fs,M)*1000;
    plot(t,y2);
    xlabel('ms');
    ylabel('FIR V');
    axis([0 t(end) 0 1]);
    
   
    subplot(2,2,4); 
    Y = abs(fft(y2))/M;
    M = round(N/8);
    Y = Y(1:M);
    f = linspace(0,fs/4,M)/1000;
    plot(f,Y,'r'); 
    ylabel('V/Hz'); 
    xlabel('kHz');
    axis([0 f(end) 0 0.5]);
    
  
    
    
    
    pause(0.01);
   
end




fclose(fid);