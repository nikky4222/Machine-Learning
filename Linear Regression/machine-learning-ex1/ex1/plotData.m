function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

filename ='C:\Users\nikky\Desktop\ML\machine-learning-ex1\machine-learning-ex1\ex1\ex1data1.txt';
A = importdata(filename);
X = A(:, 1);
Y = A(:, 1);
plot(X,Y,'rx','MarkerSize',5);
ylabel('Profit in $10,000s'); 
xlabel('Population of City in 10,000s');
end
