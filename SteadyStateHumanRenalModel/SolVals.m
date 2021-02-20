%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% SolVals
% Description: Solve system of equations for given scalings and inputs.
% This will solve for P_A and P_G in vector variable As, and then solve
% for GFR and UO given those pressure values.

%%
function [GFR, UO, As, valPars] = SolVals(Scalings, Inputs)     
    %% Parameters
    Parameters = LoadParams;
    p          = ScaleParams(Parameters, Scalings);
    valPars    = [p.Rh;p.Rmap;p.alpha;p.Pf;p.onc;p.rhP;p.rhN;p.rhK;p.rhD;p.rsP;p.rsN;p.rsK;p.rsD;p.ptgf;p.pmd;p.pma;p.fb;p.ScalFac];
    
    %% fsolve Parameters
    tol        = eps;
    options    = optimoptions('fsolve','Display','none', 'TolFun', tol, 'TolX', tol, 'OptimalityTolerance', tol);
    
    %% Solve
    nIn  = size(Inputs,1);
    As   = nan(2, nIn);
    GFR  = nan(nIn, 1);
    UO   = nan(nIn, 1);
  
    for i = 1:nIn
        % Create function handle for given inputs
        eFF      = @(x) FFfcn(Inputs(i,1),Inputs(i,2),x(1),x(2),valPars);
        
        % Do multiple solvings to see is there are other nearby solutions
        changes = [50 100];
        numCh   = numel(changes);
        sols    = nan(numCh*numCh,2);
        fval    = nan(numCh*numCh,2);
        count   = 1;
        for k = 1:numCh
            for j = 1:numCh
                [sols(count,:), fval(count,:)] = fsolve(eFF, [changes(k), changes(j)], options);
                count = count + 1;
            end
        end

        [~, where] = min(vecnorm(fval'));
        sols       = sols(where,:);
        As(:,i)    = sols;

        % Calculate GFR and UO
        GFR(i) = GFRfcn(Inputs(i,1),Inputs(i,2),sols(:,1),sols(:,2),valPars);
        UO(i)  = UOfcn(Inputs(i,1),Inputs(i,2),sols(:,1),sols(:,2),valPars);
    end
end