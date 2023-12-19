close all 
clear all
alfa=0.5;
i_threshold=5.0;
i_load=1:100;
nl=length(i_load);
 
for m=1:5
    TSD=m*1;
    for n=1:nl
    if i_load(n)>i_threshold
    operating_time(m,n)=TSD./((i_load(n)/i_threshold)^alfa-1);
    else
    operating_time(m,n)=100000;
    end
    end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
dd=['r','g','b','k','m'];
    semilogy(operating_time(m,:),dd(m));
    grid on;
    hold on;  

end
legend('TSD=1','TSD=2','TSD=3','TSD=4','TSD=5')
axis([0 100 0 100]);
title('Load Current Vs Relay Operating Time');
xlabel('load current(A)');
ylabel('operating time(seconds)');
