function [price] = Hypothesis(size,room)
size=(size-mu(1))/sigma(1);
room=(room-mu(2))/sigma(2);
price=theta(1)+theta(2)*size+theta(3)*room;