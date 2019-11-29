reverse([H|T],L,R):- reverse(T,[H|L],R).
reverse([],R,R).

changeNr([],_,Res,Res).
changeNr([H|T],Fz,Res,R):- Fz=:=1, changeNr(T,Fz,[H|Res],R).
changeNr([H|T],Fz,Res,R):- Fz=:=0, H=:= 0, changeNr(T,0,[9|Res],R).
changeNr([H|T],Fz,Res,R):- Fz=:=0,H=\=0,N is H - 1, changeNr(T,1,[N|Res],R).


main(L,R):- reverse(L,Rev), changeNr(Rev,0,[],R) .
