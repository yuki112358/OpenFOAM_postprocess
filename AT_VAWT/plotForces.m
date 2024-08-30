fileName = 'postProcessing/rotor.dat';
d = dlmread(fileName);

width=0.01;
TSR=0.02;
cT = 1.0 / ( pi/TSR );
cF = 1.0 / (0.5*1.0*(1*1)*width);
cM = 1.0 / (0.5*1.0*(1*1)*0.5*width);


d(1:99,:) = 0;

t = d(:,1)*cT;

fpx = d(:,2)*cF;
fpy = d(:,3)*cF;

fvx = d(:,5)*cF;
fvy = d(:,6)*cF;

fx = fpx + fvx;
fy = fpy + fvy;

mpz = d(:,10)*cM;
mvz = d(:,13)*cM;
mz = mpz + mvz;

nStart = 2921;

pause on
tmp0 = fx;
tmp = movmean(tmp0, 1000);
plot( t, tmp0, '.', t, tmp, 'o');
ctx = mean( tmp(nStart:end) )
pause
tmp0 = fy;
tmp = movmean(tmp0, 100);
plot( t, tmp0, '.', t, tmp, 'o');
cty = mean( tmp(nStart:end) )
pause

tmp0 = mz;  
tmp = movmean(tmp0, 1000);
plot( t, tmp0, '.',  t, tmp, 'o');
cq = mean( tmp(nStart:end) )
pause

  
tStart = 0;
t2=(t-tStart)*360;
tmp0 = fx;
tmp = movmean(tmp0, 1000);
plot( t2, fx, '.', t2, tmp, '.' );
xlim( [0 360] );
ylim( [-0.2 1.2] );
xticks(0:30:360);
yticks(-2:0.2:2);
xlabel("Azimuth [deg]")
ylabel("C_{tx}")

t2=(t-tStart)*360;
tmp0 = fy;
tmp = movmean(tmp0, 100);
plot( t2, fy, '.', t2, tmp, '.' );
xlim( [0 360] );
ylim( [-1 1] );
xticks(0:30:360);
yticks(-2:0.2:2);
xlabel("Azimuth [deg]")
ylabel("C_{ty}")

t2=(t-tStart)*360;
tmp0 = mz;  
tmp = movmean(tmp0, 1000);
plot( t2, mz, '.', t2, tmp, '.' );
xlim( [0 360] );
ylim( [-0.2 0.2] );
xticks(0:30:360);
yticks(-2:0.1:2);
xlabel("Azimuth [deg]")
ylabel("C_{q}")

