load trex.dat;
figure;scatter3(trex(:,1),trex(:,2),trex(:,3),	1,trex(:,3),'.');axis equal;
trex_com = mirt_dctn(trex);
figure;scatter3(trex_com(:,1),trex_com(:,2),trex_com(:,3),	1,trex_com(:,3),'.');axis equal;