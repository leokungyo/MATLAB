load trex.dat
figure;scatter3(trex(:,1),trex(:,2),trex(:,3),'.');axis equal;%draw the original point cloud
trex_dft = fftn(trex); %compress the original data with DFT
figure;scatter3(trex_dft(:,1),trex_dft(:,2),trex_dft(:,3),'.');axis equal;%draw the point cloud after compression