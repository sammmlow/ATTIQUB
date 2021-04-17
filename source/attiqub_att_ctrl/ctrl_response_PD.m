%%#######################################################################
% #######################################################################
% ###                                                                 ###
% ###  @@@@@@@@ @@@@@@@ @@@@@@@ @@@@@ @@@@@@@@@ @@@    @@@ @@@@@@@@   ###
% ###  @@@@@@@@ @@@@@@@ @@@@@@@ @@@@@ @@    (@@ @@@    @@@ @@@  @@@   ###
% ###  @@    @@   @@@     @@@    @@@  @@    (@@ @@@    @@@ @@@@@@@@@  ###
% ###  @@@@@@@@   @@@     @@@    @@@  @@@@@@@@@ @@@    @@@ @@@@@@@@@  ###
% ###  @@    @@   @@@     @@@   @@@@@ @@@@@@@@@ @@@@@@@@@@ @@@   @@@  ###
% ###  @@    @@   @@@     @@@   @@@@@     (@@@  @@@@@@@@@@ @@@@@@@@@  ###
% ###                                                                 ###
% ### Project ATTIQUB: Attitude Control and Torque Toolbox            ###
% ### Control torque based on a Lyapunov PD response                  ###
% ###                                                                 ###
% ### By Samuel Low (07-01-2020), DSO National Laboratories           ###
% ###                                                                 ###
% #######################################################################
% #######################################################################

function [U] = ctrl_response_PD( Kp, Ki, Kd, ATT_BR, OHM_BR )

% Kp     --> Proportional gain
% Ki     --> Integral gain
% Kd     --> Derivative gain
% ATT_BR --> Attitude error of the body-to-reference
% OHM_BR --> Angular velocity error of the body to reference.

U = (-Kp * ATT_BR) - ( Kd * OHM_BR );

% Note that for quarternions, the Beta-0 component is ignored. Thus ATT_BR
% comprises the sub-vector [ B1 B2 B3 ].

end

