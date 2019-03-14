function de = demo0311_de(a,b,t) %solver of de/dt

mid=1+a.^2.*t.^2;
de=-a.^2.*b.*t./(mid.^0.5.*(mid+b.^2));

