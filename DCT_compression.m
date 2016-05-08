load trex.dat;
%figure;scatter3(trex(:,1),trex(:,2),trex(:,3),	1,trex(:,3),'.');axis equal;
trex_com = dct(trex);
%figure;scatter3(trex_com(:,1),trex_com(:,2),trex_com(:,3),	1,trex_com(:,3),'.');axis equal;

after_mask = [];
i = 1;
%choose a mask array to compress the origin point cloud
while i<19388
    after_mask(i,:) = trex_com(i,:);
    i = i + 1;
end

%compression_ratio = size(after_mask,1)/size(trex,1);%compression ratio

%fill in zeros to make arrays have same length to compute MSE
revert = idct(after_mask);
figure;scatter3(revert(:,1),revert(:,2),revert(:,3),'.');axis equal;
for j = 20000:38776
    revert(j,:) = [0,0,0];
end

save test_dct.dat after_mask -ascii;
save test_dct_before.dat trex -ascii;
load test_dct.dat;
MSE = immse(trex,revert);%MSE
figure;scatter3(after_mask(:,1),after_mask(:,2),after_mask(:,3),'.');axis equal;
figure;scatter3(revert(:,1),revert(:,2),revert(:,3),'.');axis equal;

after = dir('test_dct.dat');
before = dir('test_dct_before.dat');
after.bytes
before.bytes
compression_ration = after.bytes/before.bytes;           