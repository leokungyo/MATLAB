clear all
close all
clc
%Read the input image
% A=imread('rice.png');
% figure,imshow(A);
% A=double(A);

load trex.dat;
trex = trex';
e = trex;%error array for predictive coding

%Perform prediction error
for i = 1:size(trex,1)
    for j = 2:size(trex,2)
        e(i,j)=e(i,j)-trex(i,j-1);
    end
end
%display(e);

%Huffman coding
% C=reshape(e,[],1);
% %quantization, otherwise huffman won't have that many codes
% C = 8 * C;
% for i=1:size(C)
%     C(i) = vpa(C(i),2);
% end
% C = C/8;
% 
% [D1,x]=hist(C,min(min(e)):max(max(e)));
% sym=x(D1>0);
% prob=D1(D1>0)/numel(e);
% [dict,avglen] = huffmandict(sym,prob);
% comp = huffmanenco(C,dict);
% 
% 
% %Huffman Decoding
% dsig = huffmandeco(comp,dict);
% e=reshape(dsig,size(trex,1),size(trex,2));
% d=e;
% 
e = e';
size(e,1)
for i =1:size(e,1)
    e(i,1) = round(e(i,1),2);
    e(i,2) = round(e(i,2),2);
    e(i,3) = round(e(i,3),2);
end
e = e';

trex_revert = e;
for i = 1:size(trex,1)
    for j = 2:size(trex,2)
        trex_revert(i,j)=trex_revert(i,j-1)+e(i,j);
    end
end
trex = trex';
e = e';
trex_revert = trex_revert';
figure;scatter3(trex(:,1),trex(:,2),trex(:,3),'.');axis equal;
figure;scatter3(trex_revert(:,1),trex_revert(:,2),trex_revert(:,3),'.');axis equal;

csvwrite('predict_before.dat',trex);
csvwrite('predict_after.dat',e);
before = dir('predict_before.dat');
after = dir('predict_after.dat');
compression_rario = after.bytes/before.bytes;
MSE_predict = immse(trex,trex_revert);
% %display(d);

