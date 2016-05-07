load trex.dat;
%figure;scatter3(trex(:,1),trex(:,2),trex(:,3),	1,trex(:,3),'.');axis equal;
trex_com = mirt_dctn(trex);
%figure;scatter3(trex_com(:,1),trex_com(:,2),trex_com(:,3),	1,trex_com(:,3),'.');axis equal;

% trex_suit = [];
% for i = 1:38776
%     trex_suit = {trex(i,1),trex(i,2),trex(i,3)};
% end
% trex_com = mirt_dctn(trex_suit);


after_mask = [];
j = 1;
%choose a mask array to compress the origin point cloud
for i=1:38776
    if trex_com(i,1) > 0 && trex_com(i,1) < 2*10^4
        if trex_com(i,2) > -10*10^4 && trex_com(i,2) < 10*10^4
            if trex_com(i,3) > -1*10^4 && trex_com(i,3) < 0
                after_mask(j,:) = trex_com(i,:);
                j = j+1;
            end
        end
    end
end

revert = mirt_idctn(after_mask);

figure;scatter3(after_mask(:,1),after_mask(:,2),after_mask(:,3),'.');axis equal;
figure;scatter3(revert(:,1),revert(:,2),revert(:,3),'.');axis equal;
            