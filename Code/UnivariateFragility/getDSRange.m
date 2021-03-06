% getDSRange: takes in a vector of the P(DS) Table and returns a vector of
% limits
%
% INPUTS
% P_DS: a vector (or matrix of multiple bridges of the probability of damage
% states
%
% NOTE: The loop is currently hardcoded for four damage states

function DSlims=getDSRange(P_DS)

% Initialize
numDmgSt=4;

DSlims=zeros(size(P_DS,1),numDmgSt+1);
numBridges=size(DSlims,1);

for i=1:numBridges
    
    DSlims(i,1)=0;
    DSlims(i,2)=DSlims(i,1)+P_DS(i,1);
    DSlims(i,3)=DSlims(i,2)+P_DS(i,2);
    DSlims(i,4)=DSlims(i,3)+P_DS(i,3);
    DSlims(i,5)=DSlims(i,4)+P_DS(i,4);
    
end