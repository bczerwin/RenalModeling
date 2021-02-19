%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% GenFcns
% Description: Run once to generate FFfcn, GFRfcn, and UOfcn function
% files. Takes over 2 hours to run as simplifying and generating functions
% can take a while.

%% Parameters (symbolic)
[Rh, Rmap, alpha, Pf, onc, rhP, rhN, rhK, rhD,...
          rsP, rsN, rsK, rsD, ptgf, pmd, pma, fb, ScalFac] = ImportParams(true);
symPars = [Rh; Rmap; alpha; Pf; onc; rhP; rhN; rhK; rhD; rsP; rsN; rsK; rsD; ptgf; pmd; pma; fb; ScalFac];
p       = LoadParams;
valPars = [p.Rh;p.Rmap;p.alpha;p.Pf;p.onc;p.rhP;p.rhN;p.rhK;p.rhD;p.rsP;p.rsN;p.rsK;p.rsD;p.ptgf;p.pmd;p.pma;p.fb;p.ScalFac];

%% Inputs
syms MAP NA
assume(MAP, 'real')
assume(NA,  'real')

%% Outputs
syms P_B P_P P_N P_K P_D P_A P_G P_E
assume(P_B, 'real'); assume(P_P, 'real'); assume(P_N, 'real'); assume(P_K, 'real');
assume(P_D, 'real'); assume(P_A, 'real'); assume(P_G, 'real'); assume(P_E, 'real');
x = [P_B P_P P_N P_K P_D P_A P_G P_E]';

%% Equations
F = EqsVec(x,MAP,NA,0,0.02,3,Rh,Rmap,alpha,Pf,onc,rhP,rhN,rhK,rhD,rsP,rsN,rsK,rsD,ptgf,pmd,pma,fb,true);

%% Simplify Equations - No TGF
shouldSimplify = false; % flag to use simplify

% System of equations as only function of P_A and parameters
[F,rB] = RemoveVar(1, P_B, F, shouldSimplify);
[F,rD] = RemoveVar(3, P_D, F, shouldSimplify);
[F,rE] = RemoveVar(6, P_E, F, shouldSimplify);
[F,rK] = RemoveVar(2, P_K, F, shouldSimplify);
[F,rN] = RemoveVar(1, P_N, F, shouldSimplify);
[F,rP] = RemoveVar(1, P_P, F, shouldSimplify);

% manually removing parameters that never change
F = subs(F,[Pf Rh(3) Rmap onc pmd rhK rsD(1:4)' fb(3)],[p.Pf p.Rh(3) p.Rmap p.onc p.pmd p.rhK p.rsD(1:4)' p.fb(3)]);

% GFR as only function of P_A and parameters
G = (P_G - rB - onc) / Rh(2)  * 60 * ScalFac;
G = subs(G, P_B, rB);
G = subs(G, P_D, rD);
G = subs(G, P_E, rE);
G = subs(G, P_K, rK);
G = subs(G, P_N, rN);
G = subs(G, P_P, rP);

% UO as only function of P_A and parameters
U = P_D / Rh(7) * 60 * ScalFac;
U = subs(U, P_B, rB);
U = subs(U, P_D, rD);
U = subs(U, P_E, rE);
U = subs(U, P_K, rK);
U = subs(U, P_N, rN);
U = subs(U, P_P, rP);

%% Generate Single Function
% Function for inputs and parameters
matlabFunction(F, 'vars', {MAP, NA, P_A, P_G, symPars}, 'File', 'FFfcn');
matlabFunction(G, 'vars', {MAP, NA, P_A, P_G, symPars}, 'File', 'GFRfcn');
matlabFunction(U, 'vars', {MAP, NA, P_A, P_G, symPars}, 'File', 'UOfcn');
toc

%% Substitute in Equation to Remove Variable
function [F,newVar] = RemoveVar(whichEq, whichVar, F, shouldSimplify)
    newVar     = solve(F(whichEq), whichVar);
    if numel(newVar) > 1
        newVar     = newVar(2); % only choosing second solution - first one is erroneous
    end
    F(whichEq) = [];
    F          = subs(F, whichVar, newVar);
    if shouldSimplify
        F = simplify(F);
    end
end
