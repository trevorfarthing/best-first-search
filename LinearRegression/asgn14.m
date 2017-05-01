# CPSC 427 02# Assignment #14: Vectorized Solution for Linear Regression# Team Leader: Trevor Farthing (tfarthing)# Developer 1: Dominic Soares# Developer 2: Kevin Do m = csvread("data.csv");X = m(:, 1);Y = m(:, 2); # Insert column of 1sX = [ones(size(X, 1), 1), X];plot(X(:,2), Y, '.b')hold theta = [zeros(size(X, 2), 1)];theta = gradientDescent(X, Y, theta, 0.0001, 1000);plot(X(:,2), theta(1,1)*X(:,1) + theta(2,1)*X(:,2), '.r')