is_not_prime(E,D,0) :- D< sqrt(E), E mod D =:= 0,D1 is D+1, is_not_prime(E,D1,1).
is_not_prime(E,D,0) :- D=:= sqrt(E), E mod D =:= 0,D1 is D+1, is_not_prime(E,D1,1).
is_not_prime(E,D,_) :- D< sqrt(E), E mod D =\= 0,D1 is D+1, is_not_prime(E,D1,0).
is_not_prime(_,_,1).

main([H|T],Res,R) :- is_not_prime(H,2,0), main(T,[H|Res],R).
main([H|T],Res,R) :- not(is_not_prime(H,2,0)), main(T,Res,R).
main([],R,R).
