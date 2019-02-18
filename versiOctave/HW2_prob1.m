% HW2_prob1.m
%
%
%

% Initialize Matlab
close all;
clc;
clear all;

% Open a figure window
figure('Color', 'w');

% calculate a 1d Grid
dz = 0.01;
Nz = 250;
za = [0:Nz-1]*dz;

% Build random device on grid
ER = ones(1, Nz);
nz = rand(1,2);
nz = round(0.7*nz/sum(nz)*Nz);
nz = round(0.1*Nz)+[1 nz(1) nz(1)+nz(2)];
ER(nz(1):nz(2)-1)=2;
ER(nz(2):nz(3)-1)=4;

% Calculate wavy funcitons for e and h
z = linspace (0,1,Nz);
E = cos(7*2*pi*z);
H = 0.5*sin(7*2*pi*z);

% Visualize the data
plot(za, E, '-b');
hold on;
plot(za, H, '-r');
hold off;
