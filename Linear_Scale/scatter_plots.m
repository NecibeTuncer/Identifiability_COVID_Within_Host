% scatter plots
%clear all
%close all
%clc

load('Workspace_for_Patient_A_NT.mat')
%load('Workspace_for_All_Patients.mat')
%load('Workspace_for_Experiment1_log_params_March10.mat')
% load('Workspace_for_Experiment2_log_params_March12.mat')
%load('Workspace_for_Patient_A1_log.mat')


%beta_u
% figure(1)
% subplot(6,6,1)
% plot(chain(:,1),chain(:,2),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,2)
% plot(chain(:,1),chain(:,3),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,3)
% plot(chain(:,1),chain(:,4),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% 
% %figure
%subplot(6,6,4)
% plot(chain(:,1),chain(:,5),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,5)
% plot(chain(:,1),chain(:,6),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,6)
% plot(chain(:,1),chain(:,7),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,7)
% plot(chain(:,1),chain(:,8),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,8)
% plot(chain(:,1),chain(:,9),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'7.7\times10^{-11}', '8.2\times10^{-11}', '8.6\times10^{-11}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\beta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%delta_u
%figure
%subplot(6,6,9)
% plot(chain(:,2),chain(:,3),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');

%figure
% subplot(6,6,10)
% plot(chain(:,2),chain(:,4),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,11)
% plot(chain(:,2),chain(:,5),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,12)
% plot(chain(:,2),chain(:,6),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal')
% 
% %figure
% subplot(6,6,13)
% plot(chain(:,2),chain(:,7),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,14)
% plot(chain(:,2),chain(:,8),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

%figure
%subplot(6,6,15)
% plot(chain(:,2),chain(:,9),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%c_u
%figure
% subplot(6,6,16)
% plot(chain(:,3),chain(:,4),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,17)
% plot(chain(:,3),chain(:,5),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,18)
% plot(chain(:,3),chain(:,6),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal')
% 
% %figure
% subplot(6,6,19)
% plot(chain(:,3),chain(:,7),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');

%figure
%subplot(6,6,20)
% plot(chain(:,3),chain(:,8),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

%figure
% subplot(6,6,21)
% plot(chain(:,3),chain(:,9),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %k_u
% %figure
% subplot(6,6,22)
% plot(chain(:,4),chain(:,5),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'9.1\times10^{-10}', '9.6\times10^{-10}', '10\times10^{-10}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\beta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,23)
% plot(chain(:,4),chain(:,6),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal')
% 
% %figure
% subplot(6,6,24)
% plot(chain(:,4),chain(:,7),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,25)
% plot(chain(:,4),chain(:,8),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,26)
% plot(chain(:,4),chain(:,9),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('k_u','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %beta_l
% 
% %figure
subplot(2,2,1)
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
% 
% %figure
subplot(2,2,2)
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
% 
% %figure
subplot(2,2,3)
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
% 
% %figure
subplot(2,2,4)
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
% 
% %delta_l
% 
% %figure
% subplot(6,6,31)
% plot(chain(:,6),chain(:,7),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');

%figure
%subplot(6,6,32)
% subplot(2,2,4)
% plot(chain(:,6),chain(:,8),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');

%figure
% subplot(6,6,33)
% plot(chain(:,6),chain(:,9),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('\delta_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% 
% %figure
% subplot(6,6,34)
% plot(chain(:,7),chain(:,8),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% %yticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,35)
% plot(chain(:,7),chain(:,9),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('c_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');
% 
% %figure
% subplot(6,6,36)
% plot(chain(:,8),chain(:,9),'.');
% NumTicks = 3;
% L = get(gca,'XLim');
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% %xticklabels({'0.5\times10^{-4}', '1\times10^{-4}', '1.5\times10^{-4}'})
% Ly = get(gca,'YLim');
% set(gca,'YTick',linspace(Ly(1),Ly(2),NumTicks))
% set(gca,'FontSize',12,'FontName','Arial','linewidth',0.5,'FontWeight','normal')
% xlabel('k_l','FontSize',18,'FontName','Arial','FontWeight','normal');
% ylabel('K','FontSize',18,'FontName','Arial','FontWeight','normal');

%h = get(0,'children');

% for i=1:length(h)
%     
%     saveas(h(i), ['ScatterPlots_Patient_AllPatients' num2str(i)], 'jpg');
%     
% end