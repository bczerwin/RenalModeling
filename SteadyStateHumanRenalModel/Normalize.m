%% DESCRIPTION
% Benjamin Czerwin
% 2/19/21
% Normalize
% Description: Noramlize given scalings between 0 and 1.
% Upper bounds are set in UpperBounds variable.

%% 
function scalings = Normalize(scalings)

    UpperBounds = [1.4;  % 1
                     4;  % 2
                     1;  % 3
                     1;  % 4
                     1;  % 5
                     1;  % 6
                     1;  % 7
                     1;  % 8
                     1;  % 9
                     1;  % 10
                     4;  % 11
                     4;  % 12
                     4]; % 13
    LowerBounds = 0.1 * ones(13,1);
    scalings = (scalings - LowerBounds)./(UpperBounds - LowerBounds);
end