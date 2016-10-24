load('../EpicFlow_v1.00/modelFinal.mat');
I = imread('../ambush_6_0004.png');
if size(I,3)==1, I = cat(3,I,I,I); end;
edges = edgesDetect(I, model);

fid=fopen('edge','wb'); fwrite(fid,transpose(edges),'single'); fclose(fid); 