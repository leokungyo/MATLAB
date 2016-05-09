close all;
%%%%%trex
load trex.dat;
tic;
random = randperm(size(trex,1));
samp_pnt = random(1:0.6*size(trex,1));
trex_com = trex;
for i = 1: size(samp_pnt,2)
    trex_com(samp_pnt(i),:) = [0,0,0];
end
trex_com(find(all(trex_com==0,2)),:)=[];
toc;
t_trex = toc;
figure;scatter3(trex(:,1),trex(:,2),trex(:,3),'.');axis equal;
figure;scatter3(trex_com(:,1),trex_com(:,2),trex_com(:,3),'.');axis equal;
csvwrite('trex_random_before.dat',trex);
csvwrite('trex_random_after.dat',trex_com);

after = dir('trex_random_before.dat');
before = dir('trex_random_after.dat'); 
trex_compression_ratio_random = after.bytes/before.bytes;
%%%%%chicken
load chicken.dat;
tic;
random = randperm(size(chicken,1));
samp_pnt = random(1:0.6*size(chicken,1));
chicken_com = chicken;
for i = 1: size(samp_pnt,2)
    chicken_com(samp_pnt(i),:) = [0,0,0];
end
chicken_com(find(all(chicken_com==0,2)),:)=[];
toc;
t_chicken = toc;
figure;scatter3(chicken(:,1),chicken(:,2),chicken(:,3),'.');axis equal;
figure;scatter3(chicken_com(:,1),chicken_com(:,2),chicken_com(:,3),'.');axis equal;
csvwrite('chicken_random_before.dat',chicken);
csvwrite('chicken_random_after.dat',chicken_com);

after = dir('chicken_random_before.dat');
before = dir('chicken_random_after.dat'); 
chicken_compression_ratio_random = after.bytes/before.bytes;

%%%%%kangaroo
load kangaroo.dat;
tic;
random = randperm(size(kangaroo,1));
samp_pnt = random(1:0.6*size(kangaroo,1));
kangaroo_com = kangaroo;
for i = 1: size(samp_pnt,2)
    kangaroo_com(samp_pnt(i),:) = [0,0,0];
end
kangaroo_com(find(all(kangaroo_com==0,2)),:)=[];
toc;
t_kangaroo = toc;
figure;scatter3(kangaroo(:,1),kangaroo(:,2),kangaroo(:,3),'.');axis equal;
figure;scatter3(kangaroo_com(:,1),kangaroo_com(:,2),kangaroo_com(:,3),'.');axis equal;
csvwrite('kangaroo_random_before.dat',kangaroo);
csvwrite('kangaroo_random_after.dat',kangaroo_com);

after = dir('kangaroo_random_before.dat');
before = dir('kangaroo_random_after.dat'); 
kangaroo_compression_ratio_random = after.bytes/before.bytes;

%%%%%chef
load chef.dat;
tic;
random = randperm(size(chef,1));
samp_pnt = random(1:0.6*size(chef,1));
chef_com = chef;
for i = 1: size(samp_pnt,2)
    chef_com(samp_pnt(i),:) = [0,0,0];
end
chef_com(find(all(chef_com==0,2)),:)=[];
toc;
t_chef = toc;
figure;scatter3(chef(:,1),chef(:,2),chef(:,3),'.');axis equal;
figure;scatter3(chef_com(:,1),chef_com(:,2),chef_com(:,3),'.');axis equal;
csvwrite('chef_random_before.dat',chef);
csvwrite('chef_random_after.dat',chef_com);

after = dir('chef_random_before.dat');
before = dir('chef_random_after.dat'); 
chef_compression_ratio_random = after.bytes/before.bytes;