%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% EqsVec
% Description: Generate system of equations. Can handle vector inputs.
% Can also handle symbolic variable input. Set isSym flag to true for this.

% Node Numbering
% 1 - B
% 2 - P
% 3 - N
% 4 - K
% 5 - D
% 6 - A
% 7 - G
% 8 - E

% Flow Numbering
% 0 - RA
% 1 - AG
% 2 - GB
% 3 - BP
% 4 - PN
% 5 - NK
% 6 - KD
% 7 - DU
% 8 - GE
% 9 - EV
% 10 - PV
% 11 - NV
% 12 - KV
% 13 - DV

% x has dimensions 8 x n where n is number of data points
% MAP has dimensions n x 1
% Na has dimensions n x 1

function [F, Qr, Q] = EqsVec(x, MAP, Na, PU, NaU, PV, Rh, Rmap, alpha, Pf, onc, rhP, rhN, rhK, rhD,...
                     rsP, rsN, rsK, rsD, ptgf, pmd, pma, fb, isSym)
                 
    MAP       = MAP';                                                      % convert to 1 x n
    Na        = Na';                                                       % convert to 1 x n
    nIn       = size(x,2);
    P         = [x(1:8,:); [PU; PV].*ones(2,nIn)];                         % Pressure nodes and references (8 x 1)
    
    if isSym
        Rh    = sym(Rh);                                                   % Make resistances symbolic
    end
    
    Rb        = alpha * Rmap;                                              % Baseline AG resistance

    % TGF - continuous
    C_BS      = Na;
    GFR       = (P(7,:) - P(1,:) - onc) / Rh(2);
    UO        = (P(5,:) - P(9,:))       / Rh(7);
    Q_KD      = (P(4,:) - P(5,:))       / Rh(6);
    C_K       = C_BS .* GFR./Q_KD * (1-rsP) * (1-rsK);
    J_KD      = C_K  .* Q_KD;
    rsD       = rsD(5) * 0.2268./(1+exp(-7.7 + 7 * J_KD * 60*2000000)) + 0.7316;   % renin-angiotension mechanism
    C_D       = C_BS .* GFR./UO * (1-rsP) * (1-rsK) .* (1-rsD);
    Rtgf      = fb(2) * 9030000./(1+exp(4.8 - 40*C_D));
    
    Rmd       = fb(1) * (pmd * (Rb + Rh(8) + Rtgf)/Pf .* log(1+exp(P(6,:)-Pf)));   % Softplus Descending Myogenic
    Rma       = 0;                                                                 % Ascending Myogenic
    Raa       = Rb + Rmd + Rtgf + Rma;                                             % Total Resistance
       
    % Pressure continuity
    Qr        = (MAP - P(6,:))/Rmap;                                       % Inlet flow - fcn of P(6)
    Q         = FluidFlow(P, Raa, Rh, onc, rhP, rhN, rhK, rhD);            % Fluid flow
    F(1:8,:)  = FluidCont(Q, Qr);                                          % Fluid continuity equations
end

%% Flow Equations
% Fluid Flows for Given Pressures and Resistances
function Q = FluidFlow(P, Raa, Rh, onc, rhP, rhN, rhK, rhD)
    frNode = [6  1  2  3  4  5  7  8];                                     % From nodes for hydraulic flow
    toNode = [7  2  3  4  5  9  8 10];                                     % To nodes for hydraulic flow
    hy     = [1  3  4  5  6  7  8  9];                                     % Branches of only hydraulic flow
    
    Q(hy,:) = (P(frNode,:) - P(toNode,:)) ./ Rh(hy);                       % Hydraulic flow only
    Q(1,:)  = (P(6,:) - P(7,:))           ./ Raa;                          % Afferent arteriole flow
    Q(2,:)  = (P(7,:) - P(1,:) - onc)     ./ Rh(2);                        % GFR flow

    % Flow modulated reabsorption at N
    if rhN == 0
        rhN = rhN(2);
    else
        rhN = rhN(3) * (rhN(1) * Q(4,:) + rhN(2));
    end
    
    Q(10,:)  = rhP * Q(3,:);                                               % Fluid reabsorption in P
    Q(11,:)  = rhN .* Q(4,:);                                              % Fluid reabsorption in N
    Q(12,:)  = rhK;                                                        % Fluid reabsorption in K
    Q(13,:)  = rhD * Q(6,:);                                               % Fluid reabsorption in D 
end

%% Continuity Equations
% Fluid Continuity for Given Fluid Flows
function F = FluidCont(Q, Qr)
    F(1,:) = Q(2,:)  - Q(3,:);
    
    F(2,:) = Q(3,:) - Q(4,:) - Q(10,:);
    F(3,:) = Q(4,:) - Q(5,:) - Q(11,:);
    F(4,:) = Q(5,:) - Q(6,:) - Q(12,:);
    F(5,:) = Q(6,:) - Q(7,:) - Q(13,:);
    
    F(6,:) = Qr   - Q(1,:);
    F(7,:) = Q(1,:) - Q(2,:) - Q(8,:);
    F(8,:) = Q(8,:) - Q(9,:);
end