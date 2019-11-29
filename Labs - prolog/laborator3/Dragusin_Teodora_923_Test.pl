%maxNr(L - list, Max - int, R - int)
%(i,i,o)
%
%maxNr(l1..ln,max) =    max      , L =[]
%					maxNr(l2..ln,max), l1<=max
%					maxNr(l2..ln,l1), l1>max
%
maxNr([H|T],Max,R):- H>Max, maxNr(T,H,R).
maxNr([H|T],Max,R):- H<Max, maxNr(T,Max,R).
maxNr([H|T],Max,R):- H=:=Max, maxNr(T,Max,R).
maxNr([],R,R).


%changeList(L - list, Max  - int, Pos -int, Res - List, r - List)
%(i,i,i,i,o)
%
%changeList(l1..ln,max,pos,res) =      []       , L = []
%								l1+max U changeList(l2..ln, max,pos+1) , pos%2 = 0
%								l1 U changeList(l2..ln, max,pos+1) , pos%2 <> 0
%
changeList([H|T],Max,Pos,Res,R):- Pos mod 2 =:= 0, Sum is H + Max,P is Pos +1,
							changeList(T,Max,P,[Sum|Res],R).
changeList([H|T],Max,Pos,Res,R):- Pos mod 2 =\= 0,P is Pos +1,
							changeList(T,Max,P,[H|Res],R).
changeList([],_,_,R,R).

%reverse(L - list, Res - List, R- List)
%(i,i,o)
%
%reverse(l1..ln) = l1 U reverse(l2..ln), L <>[]
%					[],                  L =[]
reverse([H|T],Res,R):- reverse(T,[H|Res],R).
reverse([],R,R).

%main(L - List, R - List)
%(i,o)
main(L,R):- maxNr(L,0,Max), changeList(L,Max,1,[],Res), reverse(Res,[],R).
