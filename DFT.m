%%%compress trex
clear all
close all
load trex.dat
figure;scatter3(trex(:,1),trex(:,2),trex(:,3),'.');axis equal;%draw the original point cloud
trex_dft = fft(trex); %compress the original data with DFT
i = 1;
while i<20000
    after_mask(i,:) = trex_dft(i,:);
    i = i+1;
end
revert = ifft(after_mask);
for j = 20000:38776
    revert(j,:) = [0,0,0];
end
MSE = immse(revert,trex);
figure;scatter3(trex_dft(:,1),trex_dft(:,2),trex_dft(:,3),'.');axis equal;%draw the point cloud after compression
figure;scatter3(after_mask(:,1),after_mask(:,2),after_mask(:,3),'.');axis equal;%draw the point cloud after compression
figure;scatter3(revert(:,1),revert(:,2),revert(:,3),'.');axis equal;

%%%compress chicken
load chicken.dat
figure;scatter3(chicken(:,1),chicken(:,2),chicken(:,3),'.');axis equal;%draw the original point cloud
chicken_dft = fftn(chicken); %compress the original data with DFT
figure;scatter3(chicken_dft(:,1),chicken_dft(:,2),chicken_dft(:,3),'.');axis equal;%draw the point cloud after compression

%%%compress kangaroo
load kangaroo.dat
figure;scatter3(kangaroo(:,1),kangaroo(:,2),kangaroo(:,3),'.');axis equal;%draw the original point cloud
kangaroo_dft = fftn(kangaroo); %compress the original data with DFT
figure;scatter3(kangaroo_dft(:,1),kangaroo_dft(:,2),kangaroo_dft(:,3),'.');axis equal;%draw the point cloud after compression

%%%compress chef
load chef_view2.dat
figure;scatter3(chef_view2(:,1),chef_view2(:,2),chef_view2(:,3),'.');axis equal;%draw the original point cloud
chef_view2_dft = fftn(chef_view2); %compress the original data with DFT
figure;scatter3(chef_view2_dft(:,1),chef_view2_dft(:,2),chef_view2_dft(:,3),'.');axis equal;%draw the point cloud after compression
