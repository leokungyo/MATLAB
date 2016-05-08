clear all
close all
clc

load trex.dat;
trex = trex';
e_trex = trex;%error array for predictive coding

%Perform prediction error
for i = 1:size(trex,1)
    for j = 2:size(trex,2)
        e_trex(i,j)=e_trex(i,j)-trex(i,j-1);
    end
end
%display(e);

e_trex = e_trex';
%quantization
for i =1:size(e_trex,1)
    e_trex(i,1) = round(e_trex(i,1),2);
    e_trex(i,2) = round(e_trex(i,2),2);
    e_trex(i,3) = round(e_trex(i,3),2);
end
e_trex = e_trex';

%revert to get the picture
trex_revert = e_trex;
for i = 1:size(trex,1)
    for j = 2:size(trex,2)
        trex_revert(i,j)=trex_revert(i,j-1)+e_trex(i,j);
    end
end
trex = trex';
e_trex = e_trex';
trex_revert = trex_revert';

%plot the figure out
figure;scatter3(trex(:,1),trex(:,2),trex(:,3),'.');axis equal;
figure;scatter3(trex_revert(:,1),trex_revert(:,2),trex_revert(:,3),'.');axis equal;

% write the origin data and compressed data into files in the same way
% to compare the file size
csvwrite('predict_before.dat',trex);
csvwrite('predict_after.dat',e_trex);
before = dir('predict_before.dat');
after = dir('predict_after.dat');
%compress ratio and MSE
trex_compression_rario_predict = after.bytes/before.bytes;
trex_MSE_predict = immse(trex,trex_revert);

