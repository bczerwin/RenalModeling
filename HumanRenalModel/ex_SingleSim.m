%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% ex_SingleSim
% Description: Solve for GFR and UO given a set of parameter scaligns.

%% Inputs
MAP = 90; % mmHg
Na  = 0.14; % mmol

%% Parameters
scalings     = nan(13,1);
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
[GFR, UO] = SolVals(scalings, [MAP Na])
toc