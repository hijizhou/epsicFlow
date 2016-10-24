image = 'ambush';
flowfile = ['output_' image '.flo'];
flow = readFlowFile(flowfile);

plotflow(flow(:,:,1)+flow(:,:,2)*i);

return;

%%
I1 = imread('images/ambush_6_0004.png'); 
I2 = imread('images/ambush_6_0005.png'); 
imview(I1, I2);
hold on; plotflow(flow(:,:,1)+flow(:,:,2)*i);
