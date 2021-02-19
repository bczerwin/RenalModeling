%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% ex_MAPvNAvGFR
% Description: Solve for GFR at serveral MAP and Na values
% and plot results.

%% Inputs
MAP = 60:1:180; % mmHg
Na  = (130:1:150)/1000; % mmol

%% Parameters
Parameters   = LoadParams();

scalings(1)  = 1; % ScalFac (n)
scalings(2)  = 1; % Rh(2) (Rh_GB)
scalings(3)  = 1; % rhP (rh_P)
scalings(4)  = 1; % rhD (rh_D)
scalings(5)  = 1; % rsP (rNa_P)
scalings(6)  = 1; % rsK (rNa_K)
scalings(7)  = 1; % rsD(5) (rNa_D)
scalings(8)  = 1; % fb (Fdbk)
scalings(9)  = 1; % rhP, rhN(3), rhD (rh_all)
scalings(10) = 1; % rsP, rsK, rsD(5) (rNa_all)
scalings(11) = 1; % alpha (Rb_AG), Rh(8) (Rh_GE)
scalings(12) = 1; % Rh([4,5,6,7]) (Rh_axial)
scalings(13) = 1; % alpha, Rh([1,8,9]) (Rh_vasc)

scalings     = Normalize(scalings);

%% Outputs
tic
GFR = SolVals(scalings, combvec(MAP, Na)');
GFR = reshape(GFR, [numel(MAP), numel(Na)]);
toc

%% Plot
set(0,'defaultAxesFontSize',18)
colormap('bone');

% Original Data
surf(MAP, Na*1000, GFR');

% Labels
xlabel('MAP (mmHg)');   xlim([MAP(1) MAP(end)]);
ylabel('Na (mmol)');    ylim([Na(1) Na(end)]*1000);
zlabel('GFR (mL/min)');