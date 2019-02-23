function CMAP = flagcmap(varargin)
% FLAGCMAP    Colormap for Different Country's Flags
%
% colormap(flagcmap('USA'));     %defaults to 256 colors
% colormap(flagcmap('USA',N));   %uses N colors
%
% This function provides colormaps for the countries of the EM Lab.
%
% Countries in alphabetical order:    
%   'Bangladesh'
%   'China'
%   'Goban'
%   'India'
%   'Mexico'
%   'UK'
%   'USA'
%   'UTEP'

% HANDLE NUMBER OF COLORS
if nargin==0
    CTY = 'USA';
    NCOL = 256;
elseif nargin==1
    CTY = varargin{1};
    NCOL = 256;
elseif nargin==2
    CTY = varargin{1};
    NCOL = varargin{2};
else
    error('Too many input arguments');
end

% DEFINE COLORS
switch lower(CTY)
    case 'bangladesh',
        cneg  = [0 106 78]/255;
        czero = [1 1 1];
        cpos  = [244 42 65]/255;
    case 'china', %yellow, red, green
        cneg  = [0 104 71]/255;
        czero = [255 255 200]/255;
        cpos  = [170 56 30]/255;
    case 'goban',
        cneg  = [58 117 196]/255;
        czero = [252 209 22]/255;
        cpos  = [0 158 96]/255;
    case 'india',
        cneg  = [19 136 8]/255;
        czero = [1 1 1];
        cpos  = [255 153 51]/255;
    case 'mexico',
        cneg  = [0 104 71]/255;
        czero = [1 1 1];
        cpos  = [206 17 38]/255;
    case 'uk',
        cneg  = [0 36 125]/255;
        czero = [1 1 1];
        cpos  = [207 20 43]/255;
    case 'usa',
        cneg  = [0 40 104]/255;
        czero = [1 1 1];
        cpos  = [191 10 48]/255;
    case 'utep',
        cneg  = [64 73 101]/255;
        czero = [1 1 1];
        cpos  = [255 136 67]/255;
    otherwise,
        error('Unrecognized country.  Sorry!');
end

% CREATE COLORMAP
CMAP = zeros(NCOL,3);
ncm = 1 + floor(NCOL/2);
for nc = 1 : ncm
    f = (nc-1)/(ncm - 1);
    CMAP(nc,:) = (1-f)*cneg + f*czero;
end
for nc = ncm+1 : NCOL
    f = (nc - ncm)/(NCOL - ncm);
    CMAP(nc,:) = (1-f)*czero + f*cpos;
end
