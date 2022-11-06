function d = dist(I)
[u,v] = borda(I);
[u,v] = f_interpolation(u,v,600);

m00 = mpq(I,0,0);
m10 = mpq(I,1,0);
m01 = mpq(I,0,1);

uc = m10/m00;
vc = m01/m00;

d = sqrt((u-uc).^2+(v-vc).^2);
end
