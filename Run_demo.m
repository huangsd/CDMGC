% input: 
%       data: a cell array, view_num*1, each array is n*d_v
% 
% result = EvaluationMetrics(labels, y);
%
clear 
close all
currentFolder = pwd;
% addpath(genpath(currentFolder));
addpath(genpath('.'));
load('HW2.mat');

% parameter setting
% alpha = [1e-5,1e-4,1e-3,1e-2,1e-1,1,10,100,1e3,1e4,1e5];
% beta = [1e-5,1e-4,1e-3,1e-2,1e-1,1,10,100,1e3,1e4,1e5]; 
fprintf('Running CDMGC ...\n')
[res S1 Obj] = InStructuredGL(data, labels, 1e5, 1e-5); 
% plot S
figure()
S = mapminmax(S1, 0, 1);
imshow(S) 
colormap('jet');




   
    


    



    
        
        