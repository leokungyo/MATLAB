clear all
close all
clc
%%%%%trex
load trex.dat;
trex = trex';
e_trex = trex;%error array for predictive coding
tic;
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
toc;
t_trex = toc;

%plot the figure out
figure;scatter3(trex(:,1),trex(:,2),trex(:,3),'.');axis equal;
figure;scatter3(trex_revert(:,1),trex_revert(:,2),trex_revert(:,3),'.');axis equal;

% write the origin data and compressed data into files in the same way
% to compare the file size
csvwrite('trex_predict_before.dat',trex);
csvwrite('trex_predict_after.dat',e_trex);
before = dir('trex_predict_before.dat');
after = dir('trex_predict_after.dat');
%compress ratio and MSE
trex_compression_rario_predict = after.bytes/before.bytes;
trex_MSE_predict = immse(trex,trex_revert);

%%%%%chicken
load chicken.dat;
chicken = chicken';
e_chicken = chicken;%error array for predictive coding

tic;
%Perform prediction error
for i = 1:size(chicken,1)
    for j = 2:size(chicken,2)
        e_chicken(i,j)=e_chicken(i,j)-chicken(i,j-1);
    end
end
%display(e);

e_chicken = e_chicken';
%quantization
for i =1:size(e_chicken,1)
    e_chicken(i,1) = round(e_chicken(i,1),2);
    e_chicken(i,2) = round(e_chicken(i,2),2);
    e_chicken(i,3) = round(e_chicken(i,3),2);
end
e_chicken = e_chicken';

%revert to get the picture
chicken_revert = e_chicken;
for i = 1:size(chicken,1)
    for j = 2:size(chicken,2)
        chicken_revert(i,j)=chicken_revert(i,j-1)+e_chicken(i,j);
    end
end
chicken = chicken';
e_chicken = e_chicken';
chicken_revert = chicken_revert';
toc;
t_chicken = toc;
%plot the figure out
figure;scatter3(chicken(:,1),chicken(:,2),chicken(:,3),'.');axis equal;
figure;scatter3(chicken_revert(:,1),chicken_revert(:,2),chicken_revert(:,3),'.');axis equal;

% write the origin data and compressed data into files in the same way
% to compare the file size
csvwrite('chicken_predict_before.dat',trex);
csvwrite('chicken_predict_after.dat',e_trex);
before = dir('chicken_predict_before.dat');
after = dir('chicken_predict_after.dat');
%compress ratio and MSE
chicken_compression_rario_predict = after.bytes/before.bytes;
chicken_MSE_predict = immse(chicken,chicken_revert);

%%%%%kangaroo
load kangaroo.dat;
kangaroo = kangaroo';
e_kangaroo = kangaroo;%error array for predictive coding

tic;
%Perform prediction error
for i = 1:size(kangaroo,1)
    for j = 2:size(kangaroo,2)
        e_kangaroo(i,j)=e_kangaroo(i,j)-kangaroo(i,j-1);
    end
end
%display(e);

e_kangaroo = e_kangaroo';
%quantization
for i =1:size(e_kangaroo,1)
    e_kangaroo(i,1) = round(e_kangaroo(i,1),2);
    e_kangaroo(i,2) = round(e_kangaroo(i,2),2);
    e_kangaroo(i,3) = round(e_kangaroo(i,3),2);
end
e_kangaroo = e_kangaroo';

%revert to get the picture
kangaroo_revert = e_kangaroo;
for i = 1:size(kangaroo,1)
    for j = 2:size(kangaroo,2)
        kangaroo_revert(i,j)=kangaroo_revert(i,j-1)+e_kangaroo(i,j);
    end
end
kangaroo = kangaroo';
e_kangaroo = e_kangaroo';
kangaroo_revert = kangaroo_revert';
toc;
t_kangaroo = toc;
%plot the figure out
figure;scatter3(kangaroo(:,1),kangaroo(:,2),kangaroo(:,3),'.');axis equal;
figure;scatter3(kangaroo_revert(:,1),kangaroo_revert(:,2),kangaroo_revert(:,3),'.');axis equal;

% write the origin data and compressed data into files in the same way
% to compare the file size
csvwrite('kangaroo_predict_before.dat',kangaroo);
csvwrite('kangaroo_predict_after.dat',e_kangaroo);
before = dir('kangaroo_predict_before.dat');
after = dir('kangaroo_predict_after.dat');
%compress ratio and MSE
kangaroo_compression_rario_predict = after.bytes/before.bytes;
kangaroo_MSE_predict = immse(kangaroo,kangaroo_revert);

%%%%%chef
load chef.dat;
chef = chef';
e_chef = chef;%error array for predictive coding

tic;
%Perform prediction error
for i = 1:size(chef,1)
    for j = 2:size(chef,2)
        e_chef(i,j)=e_chef(i,j)-chef(i,j-1);
    end
end
%display(e);

e_chef = e_chef';
%quantization
for i =1:size(e_chef,1)
    e_chef(i,1) = round(e_chef(i,1),2);
    e_chef(i,2) = round(e_chef(i,2),2);
    e_chef(i,3) = round(e_chef(i,3),2);
end
e_chef = e_chef';

%revert to get the picture
chef_revert = e_chef;
for i = 1:size(chef,1)
    for j = 2:size(chef,2)
        chef_revert(i,j)=chef_revert(i,j-1)+e_chef(i,j);
    end
end
chef = chef';
e_chef = e_chef';
chef_revert = chef_revert';
toc;
t_chef = toc;
%plot the figure out
figure;scatter3(chef(:,1),chef(:,2),chef(:,3),'.');axis equal;
figure;scatter3(chef_revert(:,1),chef_revert(:,2),chef_revert(:,3),'.');axis equal;

% write the origin data and compressed data into files in the same way
% to compare the file size
csvwrite('chef_predict_before.dat',chef);
csvwrite('chef_predict_after.dat',e_chef);
before = dir('chef_predict_before.dat');
after = dir('chef_predict_after.dat');
%compress ratio and MSE
chef_compression_rario_predict = after.bytes/before.bytes;
chef_MSE_predict = immse(chef,chef_revert);