
% code for the visualisation and visual inspection of single orientations -
% mean and single channels overlapped

%% ENI
ics1 = sq(OrganisedAngleAverageSub(1,:, :, :));
iOr = 7; % selection of the orientation

m_ics1= mean(sq(ics1(1:12, iOr, :)),1); % to change the number after ics_for a different orientation

t = [-1.5:1/4800:2.5];



figure
subplot(1,2,1)
plot(t,m_ics1)
axis([-1.5 2 -150 190])
title('mean ENI Or1')
hold on
subplot(1,2,2)
for iCh = 1:12
plot(t,sq(ics1(iCh, iOr, :))) % CHANGE THE SECOND NUMBER FOR THE ORIENTATION
hold on
pause
end
title([' ENI channel orient ' num2str(iOr) ' overlapped'])
axis([-1.5 2 -150 190])

%% Epidural
clear m_ics5
ics1 = sq(OrganisedAngleAverageSub(1,:, :, :));
m_ics1= mean(sq(ics1(13:23, iOr, :)),1); % to change the number after ics_for a different orientation



figure
subplot(1,2,1)
plot(t,m_ics1)
axis([-1.5 2 -150 190])
title('mean ED Or1')
hold on
subplot(1,2,2)
for iCh = 13:23
plot(t,sq(ics1(iCh, iOr, :)));  % CHANGE THE SECOND NUMBER FOR THE ORIENTATION
hold on
pause
end
title([' ED channel orient ' num2str(iOr) ' overlapped'])

axis([-1.5 2 -150 190])

%% CODE FOR VISUALISATION TO RUN AFTER RUNNING 'LOAD_DATA_AND_FILTERING_UNTIL_liNE_125

t1 = 56; % first time point
t2 = 57; % second time point


deltat = 4800 *t1: 4800 *t2;

ti = [t1:1/4800:t2];

figure
subplot(1, 2,1)
for iCh = 1:12
plot(ti, Data(iCh, deltat)) % CHANGE THE SECOND NUMBER FOR THE ORIENTATION
hold on
pause
end
title(['Data Overlapped ' num2str(t1) '-' num2str(t2) ' sec, ENI'])

subplot(1, 2,2)
plot(ti, mean(Data(1:12, deltat),1));
title ('mean same chans, ENI')


% ED


figure
subplot(1, 2,1)
for iCh = 13:23
plot(ti, Data(iCh, deltat)) % CHANGE THE SECOND NUMBER FOR THE ORIENTATION
hold on
pause
end
title(['Data Overlapped ' num2str(t1) '-' num2str(t2) ' sec, ED'])

subplot(1, 2,2)
plot(ti, mean(Data(13:23, deltat),1));
title ('mean same chans, ED')











