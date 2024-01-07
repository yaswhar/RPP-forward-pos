function [position] = RPP_Pos(theta,d1,d2)
position=[];
L1=45;L2=22.5;L3=30;
for i=1:length(theta)
    H=Rot('z',theta(i))*Trans('z',d1(i))*Trans('x',-L1)*Trans('z',L2)*Rot('x',-90)*Trans('z',d2(i)+L3)*[0;0;0;1];
    position=[position H(1:3)];
end
end