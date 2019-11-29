pp(E,0):- C is round(sqrt(E))*round(sqrt(E)), E=:=C, pp(E,1).
pp(_,1).
pp(E,1):- C is E*E, sqrt(E)=\=C, pp(E,0).


deletePP([H|T],Res,R):- pp(H,0), deletePP(T,Res,R).
deletePP([H|T],Res,R):- not(pp(H,0)), deletePP(T,[H|Res],R).
deletePP([],R,R).


main(L,R):- deletePP(L,[],R).
