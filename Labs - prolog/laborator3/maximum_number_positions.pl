%a. Determine the position of the maximal element of a linear list.
%Eg.: maxpos([10,14,12,13,14], L) produces L = [2,5]


%max( L - list, Max - int, Pos - int , L - list)
%(i,i,i,o)
max([],_,_,L,L).
max([H|T], Max, Pos,Acc ,L):- H<Max, P is Pos +1, max(T, Max, P,Acc, L).
max([H|T],Max,Pos,_,R) :- H>Max, P is Pos +1, max(T,H,P,[P],R).
max([H|T],Max, Pos,Acc, R) :- H =:= Max, P is Pos +1,max(T,Max,P,[P|Acc],R).

main(L,R):- max(L,0,0,[],P), reverse(P,R).

reverse([H|T],L,R):- reverse([T],[H|L],R).
reverse([],R,R).
