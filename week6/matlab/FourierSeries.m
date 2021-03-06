function [X, w] = FourierSeries(x, T0, k_vec) 
% function [X, w] = FourierSeries(x, T0, k_vec) 
% 
% symbolically calculate the Fourier Series, and return the 
% numerical and symbolic results 
% 
% x: the time domain signal within one period; 
% it must have definition over [0, T0] 
% it must be a symbolic function of t   
% T0: the period of the signal 
% k_vec: vector of the coeefficients to be calculated 

syms t 
 
for mm = 1:length(k_vec)
 k = k_vec(mm);
 % Fourier series 
 X(mm) = int(x*exp(-j*2*pi*k*t/T0), t, 0, T0)/T0;
 % angular frequency 
 w(mm) = k*2*pi/T0;
end 