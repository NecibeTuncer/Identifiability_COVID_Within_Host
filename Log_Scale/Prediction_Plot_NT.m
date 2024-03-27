%prediction plot

 clear all
% close all
 clc
% 
load('Workspace_for_Experiment1_log_params_July24.mat')
%load('Workspace_for_Experiment1_log_params_March10.mat')
%load('Workspace_for_Experiment2_log_params_March12.mat')
%load('Workspace_for_Patient_A1_log_NT.mat')
 
%load('Target_Cell_MCMC_Sythetic_Data_Exp1.mat')
%addpath '/Users/necibetuncer/Documents/Research/Within_Host_COVID_19/MatlabCode/mcmcstat-master'

 
[u_predictions,l_predictions,u_prediction_quartiles,l_prediction_quartiles] = plot_results(chain, 100,data.Y0);

  dimc = [0.9 0.9 0.9];
  t_time = 0:0.1:32;
  mean_chain_pred = TIVmodel(t_time,mean(chain),data.Y0);
  figure(1); 
 subplot(1,2,1)
 % fillyy(t_time,u_prediction_quartiles(1,:),u_prediction_quartiles(5,:),dimc);
 % hold on 
 % fillyy(t_time,u_prediction_quartiles(2,:),u_prediction_quartiles(4,:),dimc.*0.9);
 % hold on
  plot(data.u_time,data.swap,'r*')
  hold on
  %plot(t_time,mean_chain_pred(:,1),'k','LineWidth',1.5)
  plot(t_time,median(u_predictions,1),'r','LineWidth',1)
  hold on
  set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
  xlabel('Time (days)','FontSize',12,'FontName','Arial','FontWeight','normal');
  ylabel('log_{10}V_u','FontSize',12,'FontName','Arial','FontWeight','normal');
  hold on
   subplot(1,2,2)
%  figure(2); 
  %fillyy(t_time,l_prediction_quartiles(1,:),l_prediction_quartiles(5,:),dimc);
  %hold on 
  %fillyy(t_time,l_prediction_quartiles(2,:),l_prediction_quartiles(4,:),dimc.*0.9);
  %hold on
  plot(data.l_time,data.sputum,'r*')
  hold on
  %plot(t_time,mean_chain_pred(:,2),'k','LineWidth',1.5)
  plot(t_time,median(l_predictions,1),'r','LineWidth',1)
  hold on
  set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
  xlabel('Time (days)','FontSize',12,'FontName','Arial','FontWeight','normal');
  ylabel('log_{10}V_l','FontSize',12,'FontName','Arial','FontWeight','normal');
  hold on
  
% load('Workspace_for_Patient_B.mat')
%  
% 
%  
% [u_predictions,l_predictions,u_prediction_quartiles,l_prediction_quartiles] = plot_results(chain, 100,data.Y0);
% 
%   dimc = [0.9 0.9 0.9];
%   t_time = 0:0.1:27;
%   mean_chain_pred = TIVmodel(t_time,mean(chain),data.Y0);
%   figure(3); 
%   fillyy(t_time,u_prediction_quartiles(1,:),u_prediction_quartiles(5,:),dimc);
%   hold on 
%   fillyy(t_time,u_prediction_quartiles(2,:),u_prediction_quartiles(4,:),dimc.*0.9);
%   hold on
%   plot(data.u_time,data.swap,'ro')
%   hold on
%   plot(t_time,mean_chain_pred(:,1),'k','LineWidth',2)
%   set(gca,'FontSize',12,'FontName','Arial','linewidth',2,'FontWeight','normal')
%   xlabel('Time (days)','FontSize',18,'FontName','Arial','FontWeight','normal');
%   ylabel('log_{10}V_u','FontSize',18,'FontName','Arial','FontWeight','normal');
%   hold off
%   
%   figure(4); 
%   fillyy(t_time,l_prediction_quartiles(1,:),l_prediction_quartiles(5,:),dimc);
%   hold on 
%   fillyy(t_time,l_prediction_quartiles(2,:),l_prediction_quartiles(4,:),dimc.*0.9);
%   hold on
%   plot(data.l_time,data.sputum,'ro')
%   hold on
%   plot(t_time,mean_chain_pred(:,2),'k','LineWidth',2)
%   set(gca,'FontSize',12,'FontName','Arial','linewidth',2,'FontWeight','normal')
%   xlabel('Time (days)','FontSize',18,'FontName','Arial','FontWeight','normal');
%   ylabel('log_{10}V_l','FontSize',18,'FontName','Arial','FontWeight','normal');
%   hold off
%   
%   load('Workspace_for_Patient_D.mat')
%  
% 
%  
% [u_predictions,l_predictions,u_prediction_quartiles,l_prediction_quartiles] = plot_results(chain, 100,data.Y0);
% 
%   dimc = [0.9 0.9 0.9];
%   t_time = 0:0.1:27;
%   mean_chain_pred = TIVmodel(t_time,mean(chain),data.Y0);
%   figure(5); 
%   fillyy(t_time,u_prediction_quartiles(1,:),u_prediction_quartiles(5,:),dimc);
%   hold on 
%   fillyy(t_time,u_prediction_quartiles(2,:),u_prediction_quartiles(4,:),dimc.*0.9);
%   hold on
%   plot(data.u_time,data.swap,'ro')
%   hold on
%   plot(t_time,mean_chain_pred(:,1),'k','LineWidth',2)
%   set(gca,'FontSize',12,'FontName','Arial','linewidth',2,'FontWeight','normal')
%   xlabel('Time (days)','FontSize',18,'FontName','Arial','FontWeight','normal');
%   ylabel('log_{10}V_u','FontSize',18,'FontName','Arial','FontWeight','normal');
%   hold off
%   
%   figure(6); 
%   fillyy(t_time,l_prediction_quartiles(1,:),l_prediction_quartiles(5,:),dimc);
%   hold on 
%   fillyy(t_time,l_prediction_quartiles(2,:),l_prediction_quartiles(4,:),dimc.*0.9);
%   hold on
%   plot(data.l_time,data.sputum,'ro')
%   hold on
%   plot(t_time,mean_chain_pred(:,2),'k','LineWidth',2)
%   set(gca,'FontSize',12,'FontName','Arial','linewidth',2,'FontWeight','normal')
%   xlabel('Time (days)','FontSize',18,'FontName','Arial','FontWeight','normal');
%   ylabel('log_{10}V_l','FontSize',18,'FontName','Arial','FontWeight','normal');
%   hold off
% 
function [u_predictions,l_predictions,u_prediction_quartiles,l_prediction_quartiles] = plot_results(chain,sample_term,Y0)

%pmin = [beta_u delta_u c_u k_u beta_l delta_l c_l k_l K]'; remember the
%order

beta_u =  chain(sample_term:sample_term:end,1);
delta_u =  chain(sample_term:sample_term:end,2);
c_u =  chain(sample_term:sample_term:end,3);
k_u =  chain(sample_term:sample_term:end,4);
beta_l =  chain(sample_term:sample_term:end,5);
delta_l =  chain(sample_term:sample_term:end,6);
c_l =  chain(sample_term:sample_term:end,7);
k_l =  chain(sample_term:sample_term:end,8);
K =  chain(sample_term:sample_term:end,9);

n = length(beta_u);


t_time = 0:0.1:32;

%quartile_limits =  [0.005,0.025,0.05,0.25,0.5,0.75,0.95,0.975,0.995];

quartile_limits =  [0.05,0.25,0.5,0.75,0.95];

m = length(quartile_limits);

u_predictions = zeros(n,length(t_time));
l_predictions = zeros(n,length(t_time));
u_prediction_quartiles = zeros(m,length(t_time));
l_prediction_quartiles = zeros(m,length(t_time));
  for i = 1:n
      
      params = [beta_u(i) delta_u(i) c_u(i) k_u(i) beta_l(i) delta_l(i) c_l(i) k_l(i) K(i)];
      
      m_predic = TIVmodel(t_time,params,Y0);
      
      u_predictions(i,:) =  m_predic(:,1);
      l_predictions(i,:) =  m_predic(:,2);
      
  end
  
  clear i
  clear j
  
    for i = 1:m
  
  p = quartile_limits(i);
  
        for j = 1:length(t_time)
          
            
            u_prediction_quartiles(i,j) = interp1(sort(u_predictions(:,j)),(n-1)*p+1);
            l_prediction_quartiles(i,j) = interp1(sort(l_predictions(:,j)),(n-1)*p+1);
             
        end
    end

end

function out = fillyy(x,y1,y2,col)

%FILLYY  Fills space between lines
% fillyy(x,y1,y2,col) fill space between lines (x,y1) and (x,y2)
%  with color col


    if nargin < 4
        col='red';
    end

x  = x(:)';
y1 = y1(:)';
y2 = y2(:)';
n   = length(x);
X = [ x(1),  x,  x(n),  fliplr(x)  ];
Y = [ y1(1), y2, y1(n), fliplr(y1) ];
h = fill(X,Y,col,'Linestyle','none');

    if nargout>0
        out=h;
    end
end