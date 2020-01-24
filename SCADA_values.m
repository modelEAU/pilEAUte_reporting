%This script allows to select the data per day for each variable.
% It calculates the average values for each day. 

%% PILOT

Data2 = Verif (Data2)

%Time choosen :
T0 = datenum('20-01-2020 00:00:00', 'dd-mm-yyyy HH:MM:SS');
TF = datenum('20-01-2020 23:59:59', 'dd-mm-yyyy HH:MM:SS');

% TSS in 3rd basin
channel = 1; % Variable to be filtered
Data2(channel).values = sortrows(Data2(channel).values,1);
TimeSeries = find(Data2(channel).values > T0 & Data2(channel).values < TF);
Select(channel).values =Data2(channel).values(TimeSeries,:);

% Average of the day: 
A1 = mean (Select(channel).values(:,2))


% TSS in sludge return
channel = 2; % Variable to be filtered
Data2(channel).values = sortrows(Data2(channel).values,1);
TimeSeries = find(Data2(channel).values > T0 & Data2(channel).values < TF);
Select2(channel).values =Data2(channel).values(TimeSeries,:);

% Average of the day: 
A2 = mean (Select2(channel).values(:,2))

% DO in the 5th basin
channel = 3; % Variable to be filtered
Data2(channel).values = sortrows(Data2(channel).values,1);
TimeSeries = find(Data2(channel).values > T0 & Data2(channel).values < TF);
Select3(channel).values =Data2(channel).values(TimeSeries,:);

%Average of the day: 
A3 = mean (Select3(channel).values(:,2))

% DO in the 5th basin
channel = 4; % Variable to be filtered
Data2(channel).values = sortrows(Data2(channel).values,1);
TimeSeries = find(Data2(channel).values > T0 & Data2(channel).values < TF);
Select5(channel).values =Data2(channel).values(TimeSeries,:);

%Average of the day: 
A4 = mean (Select5(channel).values(:,2))

% % TSS in the 5th basin
% channel = 5; % Variable to be filtered
% Data(channel).values = sortrows(Data(channel).values,1);
% TimeSeries = find(Data(channel).values > T0 & Data(channel).values < TF);
% Select51(channel).values =Data(channel).values(TimeSeries,:);
% 
% %Average of the day: 
% A41 = mean (Select51(channel).values(:,2))

 
% % TSS in the 5th basin
% channel = 6; % Variable to be filtered
% Data(channel).values = sortrows(Data(channel).values,1);
% TimeSeries = find(Data(channel).values > T0 & Data(channel).values < TF);
% Select51(channel).values =Data(channel).values(TimeSeries,:);
% 
% %Average of the day: 
% A42 = mean (Select51(channel).values(:,2))
% 
%% coPILOT

turbidity200  = Verif (turbidity200)
turbidity300  = Verif (turbidity300)


%Time choosen :
T0 = datenum('20-01-2020 00:00:00', 'dd-mm-yyyy HH:MM:SS');
TF = datenum('20-01-2020 23:59:59', 'dd-mm-yyyy HH:MM:SS');

channel = 1; % Variable to be filtered
turbidity200(channel).values = sortrows(turbidity200(channel).values,1);
TimeSeries = find(turbidity200(channel).values > T0 & turbidity200(channel).values < TF);
Select5(channel).values =turbidity200(channel).values(TimeSeries,:);

%Average of the day: 
A5 = mean (Select5(channel).values(:,2))

channel = 1; % Variable to be filtered
turbidity300(channel).values = sortrows(turbidity300(channel).values,1);
TimeSeries = find(turbidity300(channel).values > T0 & turbidity300(channel).values < TF);
Select6(channel).values =turbidity300(channel).values(TimeSeries,:);

%Average of the day: 
A6 = mean (Select6(channel).values(:,2))

% channel = 1; % Variable to be filtered
% TSS360(channel).values = sortrows(TSS360(channel).values,1);
% TimeSeries = find(TSS360(channel).values > T0 & TSS360(channel).values < TF);
% Select7(channel).values =TSS360(channel).values(TimeSeries,:);
% 
% %Average of the day: 
% A7 = mean (Select7(channel).values(:,2))
% 
% channel = 4; % Variable to be filtered
% copilote(channel).values = sortrows(copilote(channel).values,1);
% TimeSeries = find(copilote(channel).values > T0 & copilote(channel).values < TF);
% Select8(channel).values =copilote(channel).values(TimeSeries,:);
% 
% %Average of the day: 
% A8 = mean (Select8(channel).values(:,2))
% 
% channel = 7; % Variable to be filtered
% copilote(channel).values = sortrows(copilote(channel).values,1);
% TimeSeries = find(copilote(channel).values > T0 & copilote(channel).values < TF);
% Select9(channel).values =copilote(channel).values(TimeSeries,:);
% 
% %Average of the day: 
% A9 = mean (Select9(channel).values(:,2))