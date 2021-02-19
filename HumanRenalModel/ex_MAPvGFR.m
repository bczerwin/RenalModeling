%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% ex_MAPvGFR
% Description: Solve for GFR at serveral MAP values and plot results.

%% Inputs
MAP = 60:5:180; % mmHg
Na  = 0.14;  % mmol

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
GFR = SolVals(scalings, [MAP', Na*ones(numel(MAP),1)]);
toc

%% Plot
set(0,'defaultAxesFontSize',18)
plot(MAP, GFR, 'color', 'k', 'linewidth', 2)
xlabel('Mean Arterial Pressure (mmHg)')
ylabel('Glomerular Filtration Rate (mL/min)')
xlim([60 180]);
GFRLabel = text(115, 100, 'Adequate GFR');
rectangle('Position', [20 90 300 35], 'LineStyle', ':', 'LineWidth', 1, 'FaceColor',[0 0 0 0.05]);
GFRLabel.FontSize = 14;

%% Add Baselien GFR to curve
hold on
load Baseline bMAP bGFR
plot(bMAP, bGFR, ':', 'color', 'k', 'linewidth', 2)
legend('New', 'Baseline');

%% Highlight regions of adequate MAP and GFR
hold on
MAPLabel = text(71, 140, 'Adequate MAP');
MAPLabel.FontSize = 14;
rectangle('Position', [70 0 30 300], 'LineStyle', ':', 'LineWidth', 1, 'FaceColor',[0 0 0 0.05]);