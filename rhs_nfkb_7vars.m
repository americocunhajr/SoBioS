%% Right hand side of the 
% -----------------------------------------------------------------
% This function defines the system of ODEs of the 
% 
% 
%   
% ----------------------------------------------------------------- 
%   Species:
%   
%   Nn  = free nuclear NF-kB [ ]
%   N   = cytoplasmatic NF-kB [ ]
%   Im  = 
%   In  =
%   I   =
%   NIn =
%   NI  = 
%
%   Parameters:
%
%   kNin   =  (days^-1)
%   kIin   =  (ind^-1*days^-1)
%   kIout  =  (days^-1)
%   kNIout =  (ind^-1*days^-1)
%   kt     =  (days^-1)
%   ktl    =  (ind^-1*days^-1)
%   kf     =  (days^-1)
%   kfn    =  (ind^-1*days^-1)
%   kb     =  (days^-1)
%   kbn    =  (ind^-1*days^-1)
%   gammam =  (days^-1)
%   IKK    =  (ind^-1*days^-1) 
% ----------------------------------------------------------------- 
%  
%
%  last update: 
% -----------------------------------------------------------------

%% Function
% -----------------------------------------------------------------
function ydot = rhs_nfkb_7vars(t,y,param)

% Species:
  Nn  = y(1);
  Im  = y(2);
  I   = y(3);
  N   = y(4);
  NI  = y(5);
  In  = y(6);
  NIn = y(7);
 
% Parameters:
  kNin   =  param(1); 
  kIin   =  param(2);  
  kIout  =  param(3);  
  kNIout =  param(4);  
  kt     =  param(5);  
  ktl    =  param(6);  
  kf     =  param(7);  
  kfn    =  param(8); 
  kb     =  param(9);  
  kbn    =  param(10);  
  gammam =  param(11);  
  IKK    =  param(12);
  
  alpha  = 1.05*IKK;

  ydot = zeros(size(y));

  ydot(1) =  kNin*N - kfn*Nn*In + kbn*NIn; % d(Nn)/dt         
  ydot(2) =  kt*Nn*Nn - gammam*Im; % d(Im)/dt
  ydot(3) =  ktl*Im - kf*N*I + kb*NI - kIin*I + kIout*In; % dI/dt
  ydot(4) = -kf*N*I + (kb + alpha)*NI - kNin*N; % dN/dt
  ydot(5) =  kf*N*I - (kb + alpha)*NI + kNIout*NIn; % d(NI)/dt
  ydot(6) =  kIin*I - kIout*In - kfn*Nn*In + kbn*NIn; % d(In)/dt
  ydot(7) =  kfn*Nn*In - (kbn + kNIout)*NIn; % d(NIn)/dt

end
% -----------------------------------------------------------------
