function cmp_num = compara(d1,d2)

x1 = d1 - mean(d1);
x2 = d2 - mean(d2);

y1 = x1/sqrt(sum(x1.^2));
y2 = x2/sqrt(sum(x2.^2));

corr = zeros(1,400);
for k = 1:400
   
    y2 = circshift(y2, 1);
    
    corr(k) = sum(y1.*y2);
end

cmp_num = max(corr);
end

