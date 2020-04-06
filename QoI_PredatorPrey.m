% -----------------------------------------------------------------
%  QoI_PredatorPrey.m
% -----------------------------------------------------------------
%  This function computes the quantity of interest (QoI) for
%  a given Predator Prey system.
% -----------------------------------------------------------------
%  Input:
%  X - model parameters
%  P - model hyperparameters
%
%  Output:
%  QoI - quantity of interest
% -----------------------------------------------------------------
%  programmers: Michel Tosin
%               michel.tosin@uerj.br
%
%               Americo Cunha Jr
%               americo@ime.uerj.br
%
%  last update: Mar 20, 2020
% -----------------------------------------------------------------

% -----------------------------------------------------------------
function QoI = QoI_PredatorPrey(X,P)

    % number of samples and parameters
    [Ns,Ninput] = size(X);
  
    % model time interval of analysis (years)
    tspan = P.tspan;

    % model initial conditions
    IC = P.IC;
    
    % subset of the temporal mesh with the years indices
    %tQoI = P.tQoI;
    
    % number of ineteger years in the temporal mesh
    %NtQoI = P.NtQoI;
    
    % model input parameters (random variables)
    A = P.Mean(1) + P.Std(1)*X(:,1);
    B = P.Mean(2) + P.Std(2)*X(:,2);
    C = P.Mean(3) + P.Std(3)*X(:,3);
    D = P.Mean(4) + P.Std(4)*X(:,4);
    
    % preallocate memory for the Quantity of Interest (QoI)
    Nint = length(tspan(2:end));
    QoI = zeros(Ns,Nint);
    %opts = odeset('RelTol',1.0e-9,'AbsTol',1.0e-10);
    
    % loop on samples for time integration
    for n=1:Ns
    
        % Predator Prey equation right hand side
        dXdt = @(t,X) [X(1).*( A(n)-B(n)*X(2));
                       X(2).*(-C(n)+D(n)*X(1))];
                   
        % ODE solver Runge-Kutta45
        [time,X] = ode45(dXdt,tspan,IC); %,opts
        
        % number of Prey at integer years
        QoI(n,1:Nint) = X(2:end,2);
        %QoI(n,1) = X(end,1);
        %QoI(n,2) = X(end,2);
        
        % number of Predator at integer years
        %QoI(n,1:NtQoI) = X(tQoI,2);
    end
    
        
end
% -----------------------------------------------------------------
