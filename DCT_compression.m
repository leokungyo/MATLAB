%%%%%trex
load trex.dat;

tic;
trex_com = dct(trex);
after_mask = [];
i = 1;
%choose a mask array to compress the origin point cloud
while i<19388
    after_mask(i,:) = trex_com(i,:);
    i = i + 1;
end

%fill in zeros to make arrays have same length to compute MSE
revert_trex = idct(trex_com);
toc;
t_trex = toc;

csvwrite('trex_DCT_before.dat',trex);
csvwrite('trex_DCT_after.dat',revert_trex);

figure;scatter3(trex(:,1),trex(:,2),trex(:,3),'.');axis equal;
figure;scatter3(revert_trex(:,1),revert_trex(:,2),revert_trex(:,3),'.');axis equal;

after = dir('trex_DCT_before.dat');
before = dir('trex_DCT_after.dat');

trex_compression_ratio_DCT = after.bytes/before.bytes;  

%%%%%chicken
load chicken.dat;

tic;
chicken_com = dct(chicken);
after_mask = [];
i = 1;
%choose a mask array to compress the origin point cloud
while i<19388
    after_mask(i,:) = chicken_com(i,:);
    i = i + 1;
end

%fill in zeros to make arrays have same length to compute MSE
revert_chicken = idct(chicken_com);
toc;
t_chicken = toc;

csvwrite('chicken_DCT_before.dat',chicken);
csvwrite('chicken_DCT_after.dat',revert_chicken);

figure;scatter3(chicken(:,1),chicken(:,2),chicken(:,3),'.');axis equal;
figure;scatter3(revert_chicken(:,1),revert_chicken(:,2),revert_chicken(:,3),'.');axis equal;

after = dir('chicken_DCT_before.dat');
before = dir('chicken_DCT_after.dat');

chicken_compression_ratio_DCT = after.bytes/before.bytes;  

%%%%%kangaroo
load kangaroo.dat;

tic;
kangaroo_com = dct(kangaroo);
after_mask = [];
i = 1;
%choose a mask array to compress the origin point cloud
while i<19388
    after_mask(i,:) = kangaroo_com(i,:);
    i = i + 1;
end

%fill in zeros to make arrays have same length to compute MSE
revert_kangaroo = idct(kangaroo_com);
toc;
t_kangaroo = toc;

csvwrite('chicken_DCT_before.dat',kangaroo);
csvwrite('chicken_DCT_after.dat',revert_kangaroo);

figure;scatter3(kangaroo(:,1),kangaroo(:,2),kangaroo(:,3),'.');axis equal;
figure;scatter3(revert_kangaroo(:,1),revert_kangaroo(:,2),revert_kangaroo(:,3),'.');axis equal;

after = dir('kangaroo_DCT_before.dat');
before = dir('kangaroo_DCT_after.dat');

kangaroo_compression_ratio_DCT = after.bytes/before.bytes;  

%%%%%chef
load chef.dat;

tic;
chef_com = dct(chef);
after_mask = [];
i = 1;
%choose a mask array to compress the origin point cloud
while i<19388
    after_mask(i,:) = chef_com(i,:);
    i = i + 1;
end

%fill in zeros to make arrays have same length to compute MSE
revert_chef = idct(chef_com);
toc;
t_chef = toc;

csvwrite('chicken_DCT_before.dat',chef);
csvwrite('chicken_DCT_after.dat',revert_chef);

figure;scatter3(chef(:,1),chef(:,2),chef(:,3),'.');axis equal;
figure;scatter3(revert_chef(:,1),revert_chef(:,2),revert_chef(:,3),'.');axis equal;

after = dir('chef_DCT_before.dat');
before = dir('chef_DCT_after.dat');

chef_compression_ratio_DCT = after.bytes/before.bytes;  