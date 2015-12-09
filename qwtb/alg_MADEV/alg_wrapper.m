function dataout = alg_wrapper(datain, calcset) %<<<1
% Part of QWTB. Wrapper script for algorithm MADEV.
%
% See also qwtb

% Format input data --------------------------- %<<<1
% MADEV definition is:
% [RETVAL, S, ERRORB, TAU] = ALLAN_MODIFIED(DATA,TAU,NAME,VERBOSE)
% structure DATA required by Hopcroft's scripts:
DATA.rate = datain.fs.v;
% values must be in row vectors:
DATA.freq = datain.y.v(:);

if isempty(datain.tau.v)
    % generate all tau values:
    % calculation of tau must be in this form, otherwise rounding errors can occur:
    TAU = [1/DATA.rate : 1/DATA.rate : length(DATA.freq)./DATA.rate./2];
else
    % user has own tau values
    TAU = datain.tau.v;
end % if isempty

% Call algorithm ---------------------------  %<<<1
% XXX hopcroft script generates division by zero during test!
[RETVAL, S, ERRORB, TAU] = allan_modified(DATA, TAU, '', 0);

% Format output data:  --------------------------- %<<<1
% to prevent negative zeros sometimes generated by Hopcroft's scripts:
RETVAL = RETVAL + 0;
dataout.madev.v = RETVAL;
% should calculate uncertainty only if CS.unc = 'guf'!!  XXX 2DO
dataout.madev.u = ERRORB;
dataout.tau.v = TAU;

end % function

% vim settings modeline: vim: foldmarker=%<<<,%>>> fdm=marker fen ft=octave textwidth=80 tabstop=4 shiftwidth=4
