%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% ScaleParams
% Description: Scale given parameters based on scaling values.
% Certain scaling values multiple parameters.

%%
function Parameters = ScaleParams(Parameters, scalings)
    % De normalize parameters to original values in original ranges
    scalings   = DeNormalize(scalings);
    
    %% Parameter Adjustment
    w1                 = [4 5 6 7];                                        % indices for scaling 12
    w2                 = [1 8 9];                                          % indices for scaling 13
    Parameters.ScalFac = Parameters.ScalFac * scalings(1);
    Parameters.Rh(2)   = Parameters.Rh(2)   * scalings(2);
    Parameters.rhP     = Parameters.rhP     * scalings(3);
    Parameters.rhD     = Parameters.rhD     * scalings(4);
    Parameters.rsP     = Parameters.rsP     * scalings(5);
    Parameters.rsK     = Parameters.rsK     * scalings(6);
    Parameters.rsD(5)  = Parameters.rsD(5)  * scalings(7);
    Parameters.fb      = Parameters.fb      * scalings(8);
    Parameters.rhP     = Parameters.rhP     * scalings(9);
    Parameters.rhN(3)  = Parameters.rhN(3)  * scalings(9);
    Parameters.rhD     = Parameters.rhD     * scalings(9);
    Parameters.rsP     = Parameters.rsP     * scalings(10);
    Parameters.rsK     = Parameters.rsK     * scalings(10);
    Parameters.rsD(5)  = Parameters.rsD(5)  * scalings(10);
    Parameters.alpha   = Parameters.alpha   * scalings(11);
    Parameters.Rh(8)   = Parameters.Rh(8)   * scalings(11);
    Parameters.Rh(w1)  = Parameters.Rh(w1)  * scalings(12);
    Parameters.alpha   = Parameters.alpha   * scalings(13);
    Parameters.Rh(w2)  = Parameters.Rh(w2)  * scalings(13);
    
end