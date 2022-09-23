clc
l1=50;
l2=40;
for t = 0:0.01:2*pi
    x = 45+abs(cos(3*t))*10*cos(t);
    y = 45+abs(cos(3*t))*10*sin(t);
    
    C2 = (x^2 + y^2 - l1^2 - l2^2)/(2*l1*l2);
    S2 = sqrt(abs(1 - C2^2));
    
    t2=atan2(S2,C2);
    
    C1 = (x*(l1 + l2*C2) + y*(l2*S2))/((l1+l2*C2)^2+(l2*S2)^2);
    S1 = (-x*(l2*S2) + y*(l1 + l2*C2))/((l1+l2*C2)^2+(l2*S2)^2);
    
    t1=atan2(S1,C1);
    
    Px = l1*cos(t1) + l2*cos(t1 + t2);
    Py = l1*sin(t1) + l2*sin(t1 + t2);
    
    subplot(2,1,1);
    plot(t,t1*180/pi,'*',t,t2*180/pi,'^');
    title('Graph of rotation angles');
    xlabel('Time (s)');ylabel('Rotation (Degree)')
    hold on
    grid on
    
    subplot(2,1,2);
    plot(Px,Py,'.');
    title('Graph of Responding path');
    xlabel('x');ylabel('y');
    hold on
    grid on
    pause(0.02)
    
    
end
