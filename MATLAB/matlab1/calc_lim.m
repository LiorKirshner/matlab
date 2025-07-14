function y = calc_lim(f,a)
if nargin<2
    error('you must enter   ');
end
if nargout == 1 
syms x
y=limit (f,x,a);
end
% function y = calc_lim(f,a)
% if nargin<2
%     a=0;
% if nargin<1
%     error('you must enter the function');
% end
%  nargout
% syms x 
% y=limit (f,x,a);

