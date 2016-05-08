close all;
load trex.dat;
random = randperm(38776);
samp_pnt = random(1:30000);
trex_com = trex;
for i = 1: 30000
    trex_com(samp_pnt(i),:) = [0,0,0];
end
trex_com(find(all(trex_com==0,2)),:)=[];

%trex_com(find(sum(abs(trex_com),1)==0),:)=[];
figure;scatter3(trex(:,1),trex(:,2),trex(:,3),'.');axis equal;
figure;scatter3(trex_com(:,1),trex_com(:,2),trex_com(:,3),'.');axis equal;
save test_random.dat trex_com -ascii;
save test_random_before.dat trex -ascii;
after = dir('test_random.dat');
before = dir('test_random_before.dat'); 
compression_ratio = after.bytes/before.bytes;