function [ CenterIndex ] = FindCenter3D( X,Y,Z )

Distance = zeros(1,length(X));

for i = 1:length(X)
    for j = 1:length(X)
        Distance(i) = Distance(i) + (X(j)-X(i))^2 + (Y(j)-Y(i))^2 + (Z(j)-Z(i))^2;
    end
end

CenterIndex = find(Distance == min(Distance));


end

