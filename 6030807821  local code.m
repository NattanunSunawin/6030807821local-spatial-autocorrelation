%6030807821 
%Nattanun Sunawin
clear
clc
format short G
% Contiguity Matrix to cm
cm =[ 0 1 1 1 1 1
    1 0 1 0 0 1
    1 1 0 1 0 0
    1 0 1 0 1 0
    1 0 0 1 0 1
    1 1 0 0 1 0];

% Sum of Contiguity Matrix Rows to s
s = sum(cm,2)

% Row Standardized Spatial Weights Matrix to w
w = cm./s

x = [2052
    5236
    2825
    5659
    13528
    7731];

% Z-Scores for a Population  to z
z = zscore(x,1)

% LISA
I = z.*(w*z)