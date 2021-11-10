clc
clear
close all


x1 = csvread('My_netflix.csv');
x1 = x1(2:end,1:end);

years_idx = find(x1(:,8)>0);

x1 = x1(years_idx,1:end);

date = x1(:,7);
relase = x1(:,8);

figure(1)
plot(date, relase, '+c') 
axis([0 0 0])
xlabel('date_added')
ylabel('release_year')
grid on



cov_ap = (date-mean(date))'*(relase-mean(relase))/length(date)
var_a = (date-mean(date))'*(date-mean(date))/length(date)
var_p = (relase-mean(relase))'*(relase-mean(relase))/length(relase)

corr_c = cov_ap/sqrt(var_a*var_p)



