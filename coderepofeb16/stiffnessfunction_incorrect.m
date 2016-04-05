function [ k ] = stiffnessfunction(rleft,rright,zbot,ztop,mat,kc)
%STIFFNESSFUNCTION Summary of this function goes here
%   Detailed explanation goes here
% the code has to be modified to include thermal conductivity

j=0.25*(rright-rleft)*(ztop-zbot);
%j=1;
k=j^2*kc(mat)*[ (zbot^2*((8*rleft)/3 + (8*rright)/3) + ztop^2*((8*rleft)/3 + (8*rright)/3) + (4*rleft*rright^2)/3 - (20*rleft^2*rright)/3 + 4*rleft^3 + (4*rright^3)/3 - zbot*ztop*((16*rleft)/3 + (16*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3),                                                                                          -(2*(rleft + rright)*(12*rleft*rright - 6*rleft^2 - 6*rright^2 + 12*zbot^2 - 24*zbot*ztop + 12*ztop^2))/(9*(rleft - rright)^3*(zbot - ztop)^3), -(zbot^2*((4*rleft)/3 + (4*rright)/3) + ztop^2*((4*rleft)/3 + (4*rright)/3) - 4*rleft^2*rright + (8*rleft^3)/3 + (4*rright^3)/3 - zbot*ztop*((8*rleft)/3 + (8*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3),  (zbot^2*((4*rleft)/3 + (4*rright)/3) + ztop^2*((4*rleft)/3 + (4*rright)/3) + 4*rleft^2*rright - (8*rleft^3)/3 - (4*rright^3)/3 - zbot*ztop*((8*rleft)/3 + (8*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3);
                                                                                          -(2*(rleft + rright)*(12*rleft*rright - 6*rleft^2 - 6*rright^2 + 12*zbot^2 - 24*zbot*ztop + 12*ztop^2))/(9*(rleft - rright)^3*(zbot - ztop)^3), (zbot^2*((8*rleft)/3 + (8*rright)/3) + ztop^2*((8*rleft)/3 + (8*rright)/3) - (20*rleft*rright^2)/3 + (4*rleft^2*rright)/3 + (4*rleft^3)/3 + 4*rright^3 - zbot*ztop*((16*rleft)/3 + (16*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3),  (zbot^2*((4*rleft)/3 + (4*rright)/3) + ztop^2*((4*rleft)/3 + (4*rright)/3) + 4*rleft*rright^2 - (4*rleft^3)/3 - (8*rright^3)/3 - zbot*ztop*((8*rleft)/3 + (8*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3), -(zbot^2*((4*rleft)/3 + (4*rright)/3) + ztop^2*((4*rleft)/3 + (4*rright)/3) - 4*rleft*rright^2 + (4*rleft^3)/3 + (8*rright^3)/3 - zbot*ztop*((8*rleft)/3 + (8*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3);
                          -(zbot^2*((4*rleft)/3 + (4*rright)/3) + ztop^2*((4*rleft)/3 + (4*rright)/3) - 4*rleft^2*rright + (8*rleft^3)/3 + (4*rright^3)/3 - zbot*ztop*((8*rleft)/3 + (8*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3),                           (zbot^2*((4*rleft)/3 + (4*rright)/3) + ztop^2*((4*rleft)/3 + (4*rright)/3) + 4*rleft*rright^2 - (4*rleft^3)/3 - (8*rright^3)/3 - zbot*ztop*((8*rleft)/3 + (8*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3),                                                                              (8*(rleft + rright)*(rleft^2 - 2*rleft*rright + rright^2 + zbot^2 - 2*zbot*ztop + ztop^2))/(3*(rleft - rright)^3*(zbot - ztop)^3),                                                                 -(2*(rleft + rright)*(12*rleft*rright - 6*rleft^2 - 6*rright^2 + 12*zbot^2 - 24*zbot*ztop + 12*ztop^2))/(9*(rleft - rright)^3*(zbot - ztop)^3);
                           (zbot^2*((4*rleft)/3 + (4*rright)/3) + ztop^2*((4*rleft)/3 + (4*rright)/3) + 4*rleft^2*rright - (8*rleft^3)/3 - (4*rright^3)/3 - zbot*ztop*((8*rleft)/3 + (8*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3),                          -(zbot^2*((4*rleft)/3 + (4*rright)/3) + ztop^2*((4*rleft)/3 + (4*rright)/3) - 4*rleft*rright^2 + (4*rleft^3)/3 + (8*rright^3)/3 - zbot*ztop*((8*rleft)/3 + (8*rright)/3))/((rleft - rright)^3*(zbot - ztop)^3),                                                                 -(2*(rleft + rright)*(12*rleft*rright - 6*rleft^2 - 6*rright^2 + 12*zbot^2 - 24*zbot*ztop + 12*ztop^2))/(9*(rleft - rright)^3*(zbot - ztop)^3),                                                                              (8*(rleft + rright)*(rleft^2 - 2*rleft*rright + rright^2 + zbot^2 - 2*zbot*ztop + ztop^2))/(3*(rleft - rright)^3*(zbot - ztop)^3)];

%k=sum(sum(k))/sum(diag(k))*[k(1,1) 0 0 0; 0 k(2,2) 0 0; 0 0 k(3,3) 0; 0 0 0 k(4,4)];
end

