%prediction plot

clear all
close all
clc

load('Workspace_for_Patient_A1.mat')
 
%load('Workspace_for_Patient_C.mat')
%addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'


t = linspace(0,27)';
figure(1); 
out = mcmcpred(results,chain,s2chain,t,@TIVmodel,1000,data.Y0);
mcmcpredplot(out);

load('Workspace_for_Patient_B.mat')

figure(2); 
out = mcmcpred(results,chain,s2chain,t,@TIVmodel,1000,data.Y0);
mcmcpredplot(out);

load('Workspace_for_Patient_C.mat')

figure(3); 
out = mcmcpred(results,chain,s2chain,t,@TIVmodel,1000,data.Y0);
mcmcpredplot(out);

load('Workspace_for_Patient_D.mat')

figure(4); 
out = mcmcpred(results,chain,s2chain,t,@TIVmodel,1000,data.Y0);
mcmcpredplot(out);

load('Workspace_for_Patient_E.mat')

figure(5); 
out = mcmcpred(results,chain,s2chain,t,@TIVmodel,1000,data.Y0);
mcmcpredplot(out);

load('Workspace_for_Patient_F.mat')

figure(6); 
out = mcmcpred(results,chain,s2chain,t,@TIVmodel,1000,data.Y0);
mcmcpredplot(out);
