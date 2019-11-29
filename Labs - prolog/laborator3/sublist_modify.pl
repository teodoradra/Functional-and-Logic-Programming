modify([H|T],Res,R) :- is_list(H), modify_subList(H,[],Modified), modify(T,[Modified|Res],R).
modify([H|T],Res,R):- not(is_list(H)), H mod 2 =\= 0 , modify(T,[H|Res],R).
modify([H|T],Res,R):- not(is_list(H)), H mod 2 =:= 0 , modify(T,Res,R).
modify([],R,R).


modify_subList([H|T], Res,R) :- H mod 2 =:= 0, modify_subList(T,[H|Res],R).
modify_subList([H|T],Res, R):- H mod 2 =\= 0, modify_subList(T,Res,R).
modify_subList([],R,R).

reverse([H|T], Res,R):- reverse(T,[H|Res],R).
reverse([],R,R).

main(Res,R):- modify(Res,[],Mod), reverse(Mod,[],R).
