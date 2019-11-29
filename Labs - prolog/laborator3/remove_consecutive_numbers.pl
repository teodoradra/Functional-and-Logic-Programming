% Given a linear numerical list write a predicate to remove all sequences of consecutive values.
%Eg.: remove([1, 2, 4, 6, 7, 8, 10], L) will produce L=[4, 10].


reCons([L1,L2|T],_,L,R):- C is L1 + 1, L2=:=C, reCons([L2|T],L1,L,R).
reCons([L1,L2|T],Prev,L,R):- C is Prev + 1, L1=:=C, reCons([L2|T],L1,L,R).
reCons([L1,L2|T],_,L,R):- C is L1 + 1, L2=\=C, reCons([L2|T],L1,[L1|L],R).
reCons([L1,L2|T],Prev,L,R):- C is Prev + 1, L1=\=C, reCons([L2|T],L1,[L1|L],R).
reCons([L1],Prev,L,R):- C is Prev + 1, L1=:=C,reCons([],L1,[L],R).
reCons([L1],Prev,L,R):- C is Prev + 1, L1=\=C,reCons([],L1,[L1|L],R).
reCons([],_,R,R).
