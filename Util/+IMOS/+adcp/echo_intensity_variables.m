function [evars] = echo_intensity_variables(sample_data)
% function [bool] = echo_intensity_variables(sample_data)
%
% Return variables names associated with echo intensity.
% These are the variable commonly bin-mapped
% (velocity & counts).
%
% Inputs:
%
% sample_data [struct] - a toolbox dataset.
%
% Outputs:
%
% evars [cell] - A cell with variable names.
%
% Example:
%
% %basic usage
% x.variables{1}.name = 'ABSIC1';
% x.variables{2}.name = 'VEL1';
% x.variables{3}.name = 'X';
% assert(inCell(IMOS.adcp.echo_intensity_variables(x),'ABSIC1'))
% assert(inCell(IMOS.adcp.echo_intensity_variables(x),'VEL1'))
% assert(~inCell(IMOS.adcp.echo_intensity_variables(x),'X'))
%
% y.variables{1}.name = 'UCUR';
% y.variables{2}.name = 'DEPTH';
% assert(inCell(IMOS.adcp.echo_intensity_variables(y),'UCUR'))
% assert(~inCell(IMOS.adcp.echo_intensity_variables(y),'DEPTH'))
%
% author: hugo.oliveira@utas.edu.au
%
narginchk(1, 1)

var_pool = {
        'ABSI1', ...
            'ABSIC1', ...
            'CMAG1', ...
            'SNR1', ...
            'VEL1', ...
            'UCUR', ...
            'UCUR_MAG', ...
            'ABSI2', ...
            'ABSIC2', ...
            'CMAG2', ...
            'SNR2', ...
            'VEL2', ...
            'VCUR', ...
            'VCUR_MAG', ...
            'ABSI3', ...
            'ABSIC3', ...
            'CMAG3', ...
            'SNR3', ...
            'VEL3', ...
            'WCUR', ...
            'ABSI4', ...
            'ABSIC4', ...
            'CMAG4', ...
            'VEL4', ...
            'ECUR'
        };
evars = intersect(var_pool, IMOS.get(sample_data.variables, 'name'));
end
