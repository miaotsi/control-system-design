function dde = demo0311_dde(a,b,t) %solver of d2e/dt2

mid=1+a.^2.*t.^2;
dde=-a.^2.*b./mid.^1.5.*(1./mid-(mid-1)./(mid+b.^2));