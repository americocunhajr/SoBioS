% -----------------------------------------------------------------
%  QoI_SEAITR.m
% -----------------------------------------------------------------
%  This function computes the quantity of interest (QoI) for
%  a given SEIATR system.
%
%  M. Tosin, A. Cunha Jr and F. C. Coelho. 
%  Seleção de modelos epidemiológicos via  
%  análise de sensibilidade global. 
%  Congresso Brasileiro de Automática, 2020.
% -----------------------------------------------------------------
%  Input:
%  X - model parameters (random parameters)
%  P - model hyperparameters (constant parameters)
%
%  Output:
%  QoI - quantity of interest
% -----------------------------------------------------------------
%  programmers: Michel Tosin
%               michel.tosin@uerj.br
%
%  last update: Oct 14, 2020
% -----------------------------------------------------------------

% -----------------------------------------------------------------
function QoI = QoI_SEAITR(X,P)

    % number of samples
    Ns = size(X,1);
  
    % model time interval of analysis (days)
    tspan = P.tspan;             % time vector
       dt = tspan(2) - tspan(1); % time step
     NQoI = tspan(end);          % number of days

    % model initial conditions
    IC = P.IC;
    
    % model case
    case_name = P.case_name;
    
    % model input parameters (random variables)    
    if (case_name == 2), X = [X(:,1:5) X(:,5) X(:,6:end)];          end % y_A = y_I
    if (case_name == 3), X = [X(:,1:8) X(:,8) X(:,9:end)];          end % t_A = t_I
    if (case_name == 4), X = [X(:,1:7) zeros(Ns,1) X(:,8:end)];     end % t_A = 0
    if (case_name == 5), X = [X(:,1:3) 0.25*ones(Ns,1) X(:,4:end)]; end % v = 0.25
    if (case_name == 6), X = [X(:,1:3) 0.5*ones(Ns,1) X(:,4:end)];  end % v = 0.5
    if (case_name == 7), X = [X(:,1:3) 0.75*ones(Ns,1) X(:,4:end)]; end % v = 0.75
    
    b_A = X(:,1);  % transmission rate for asymptomatic infected people
    b_I = X(:,2);  % transmission rate for symptomatic infected people
     a  = X(:,3);  % exposure rate
     v  = X(:,4);  % proportion of asyntomatic people
    y_A = X(:,5);  % recovery rate for asymptomatic infectious people
    y_I = X(:,6);  % recovery rate for symptomatic infectious people
    y_T = X(:,7);  % recovery rate for tested people
    t_A = X(:,8);  % testing rate for asymptomatic infectious people
    t_I = X(:,9);  % testing rate for symptomatic infectious people
    m_I = X(:,10); % mortality rate for symtomatic infectious people
    m_T = X(:,11); % mortality rate for tested people

    % preallocate memory for the Quantity of Interest (QoI)
    QoI = zeros(Ns,NQoI);

    % loop on samples for time integration
    for n=1:Ns
		
  	if mod(n,1000) == 0
            disp(n)
        end

        % Predator Prey equation right hand side
        dYdt = @(t,Y) [ -Y(1).*( b_A(n)*Y(3) + b_I(n)*Y(4) )./( Y(7) - Y(5) );               % S equation
                       ( Y(1).*( b_A(n)*Y(3) + b_I(n)*Y(4) )./( Y(7) - Y(5) ) - a(n)*Y(2) ); % E equation
		       ( v(n)*a(n)*Y(2) - ( y_A(n) + t_A(n) )*Y(3) );                        % A equation
		       ( (1-v(n))*a(n)*Y(2) - ( y_I(n) + t_I(n) + m_I(n) )*Y(4) );           % I equation
		       ( t_A(n)*Y(3) + t_I(n)*Y(4) - ( y_T(n) + m_T(n) )*Y(5) );             % T equation
		       ( m_I(n)*Y(4) + m_T(n)*Y(5) );                                        % D equation
		       ( -m_I(n)*Y(4) - m_T(n)*Y(5) ) ];                                     % N equation
        % Do not integrate R equation for better performance!

        % ODE solver Runge-Kutta45
        [time,Y] = ode45(dYdt,tspan,IC);       
	D = Y(:,6); % deceased compartment
        h = 1/dt;   % unitary step 

	% Calculate the QoI
	QoI(n,:) = D(1+h:h:end); % total number of deceased people per day
    end
        
end
% -----------------------------------------------------------------
