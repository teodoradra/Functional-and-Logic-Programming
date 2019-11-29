% Define a predicate to remove from a list all repetitive elements.
% Eg.: l=[1,2,1,4,1,3,4] => l=[2,3]

frq([H|T],E,F,R):-H=:=E,C is F+1,frq(T,E,C,R).
frq([H|T],E,F,R):-H=\=E,frq(T,E,F,R).
frq([],_,R,R).

deleteFromList([H|T],Res,Del,R):- frq(Del,H,0,Frecv), Frecv=:=0,
						  frq(T,H,0,Fr), Fr>0,
						  deleteFromList(T,Res,[H|Del],R).
deleteFromList([H|T],Res,Del,R):- frq(Del,H,0,Frecv), Frecv=\=0,
						  deleteFromList(T,Res,[H|Del],R).
deleteFromList([H|T],Res,Del,R):- frq(Del,H,0,Frecv), Frecv=:=0,
						  frq(T,H,0,Fr), Fr=:=0,
						  deleteFromList(T,[H|Res],[H|Del],R).
deleteFromList([],R,_,R).


main(L,R) :- deleteFromList(L,[],[],R).
