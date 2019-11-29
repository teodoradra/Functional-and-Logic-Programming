%main(N- int, L - List, R - List)
%(i,i,o)
main(N,L,R):-findall(X,comb(N,L,X),R).

%comb(n,l1...ln) =		[]		      , n=0
%					l1 U comb(n-1,l2..ln), n>0

%comb(N - int, L - List, R - list)
%(i,i,o)
comb(0,_,[]).
comb(N,[X|T],[X|Comb]):-N>0,N1 is N-1,comb(N1,T,Comb).
comb(N,[_|T],Comb):-N>0,comb(N,T,Comb).
