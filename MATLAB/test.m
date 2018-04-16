% filename='lab_10_data.xlsx'
% data=xlsread(filename)
% for i=1:4
%     maxvalues(1,i)= max(data(:,i+2))
%     minvalues(1,i)= min(data(:,1+2))
% end

S=2;
B=4;
P=1;
C=0;
for K=S:B:S^B
    P= P*K;
    C=C+1;
end
disp(P)
disp(C)