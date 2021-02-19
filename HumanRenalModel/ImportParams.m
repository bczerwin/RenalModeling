%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% ImportParams
% Description: Import parameters as either values below or symbolically.
% This can be set by the isSym flag.

%%
function [Rh, Rmap, alpha, Pf, onc, rhP, rhN, rhK, rhD,...
          rsP, rsN, rsK, rsD, ptgf, pmd, pma, fb, ScalFac] = ImportParams(isSym)
    
    ScalFac = 2000000;
    
    if isSym
        Rh    = sym('Rh',   [9,1], 'real');
        rhN   = sym('rhN',  [3,1], 'real');
        rsD   = sym('rsD',  [5,1], 'real');
        ptgf  = sym('ptgf', [3,1], 'real');
        fb    = sym('fb',   [3,1], 'real');  % scaling for feedback mechanisms
        alpha = sym('alpha', [1,1], 'real');
        syms Rmap Pf onc rhP rhK rhD rsP rsN rsK pmd pma ScalFac real
        
    else
        alpha = 1.0769;
        onc   = 30;
        Pf    = 67;
        pma   = 0.5;
        pmd   = 0.5;
        ptgf  = [9030000;4.8;40];
        Rh    = [4363600;10000000;5000000.68252096;11999999.6372422;6153800.18703632;12308000.1566319;514970000;9402100;3463900];
        rhD   = 0.9522;
        rhK   = 0;
        rhN   = [-1200000;0.650000000000000];
        rhP   = 0.75;
        Rmap  = 2.578512396694214e+06;
        rsD   = [840000000;-9.166666666666666e-09;0.731600000000000;0.958400000000000];
        rsK   = 0.8;
        rsN   = 0;
        rsP   = 0.75;

        
        % Reabsorption scaling factors
        rhN(3) = 1;
        rsD(5) = 1;
        fb = [1; 1; 1]; % scaling for feedback mechanisms
    end
end