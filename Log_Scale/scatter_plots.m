% scatter plots
%clear all
%close all
%clc

%load('Workspace_for_Experiment1_log_params_March10.mat')
% load('Workspace_for_Experiment2_log_params_March12.mat')
%load('Workspace_for_Patient_A1_log.mat')


%beta_u
figure
plot(chain(:,1),chain(:,2),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,1),chain(:,3),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,1),chain(:,4),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');


figure
plot(chain(:,1),chain(:,5),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,1),chain(:,6),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,1),chain(:,7),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,1),chain(:,8),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,1),chain(:,9),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%delta_u
figure
plot(chain(:,2),chain(:,3),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,2),chain(:,4),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,2),chain(:,5),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,2),chain(:,6),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal')

figure
plot(chain(:,2),chain(:,7),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,2),chain(:,8),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,2),chain(:,9),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%c_u
figure
plot(chain(:,3),chain(:,4),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,3),chain(:,5),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,3),chain(:,6),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal')

figure
plot(chain(:,3),chain(:,7),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,3),chain(:,8),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,3),chain(:,9),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%k_u
figure
plot(chain(:,4),chain(:,5),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,4),chain(:,6),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal')

figure
plot(chain(:,4),chain(:,7),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,4),chain(:,8),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,4),chain(:,9),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%beta_l

figure
plot(chain(:,5),chain(:,6),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal')

figure
plot(chain(:,5),chain(:,7),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,5),chain(:,8),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,5),chain(:,9),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%delta_l

figure
plot(chain(:,6),chain(:,7),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,6),chain(:,8),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,6),chain(:,9),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');


figure
plot(chain(:,7),chain(:,8),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
%yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,7),chain(:,9),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

figure
plot(chain(:,8),chain(:,9),'.');
NumTicks = 3;
L = get(gca,'XLim');
set(gca,'XTick',linspace(L(1),L(2),NumTicks))
%xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
Ly = get(gca,'YLim');
set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
xlabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');
ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%h = get(0,'children');

% for i=1:length(h)
%     
%     saveas(h(i), ['ScatterPlots_Patient_AllPatients' num2str(i)], 'jpg');
%     
% end