% Write a predicate to delete first occurrence of the minimum number from a list.
%
% deleteElement(l1...ln,e) =- [], if l=[]
%                           -l1 reunited with
%                           deletedElement(l2...ln,e),if l1 != e
%                           -deletedElement(l2...ln,e), if l1=e
%
%deleteElement(List l, int e,int st, List R)
%(i,i,i,o)
deleteElement([],_,_,[]).
deleteElement([H|T],E,S,R):- S=:=0,H=:=E,deleteElement(T,E,1,R).
deleteElement([H|T],E,S,R):- S=:=1,H=:=E, deleteElement(T,E,S,R2),R = [H|R2].
deleteElement([H|T],E,S,R):- H=\=E, deleteElement(T,E,S,R2), R = [H|R2].


%minEle(l1...ln,cmin) = -cmin, l=[]
%                       -minEle(l2..ln,cmin), if l1>cmin
%                       -minEle(l2..ln,l1), if l1<cmin
%
%MinEle(List l, int cMin, int R)
%(i,i,0)
minEle([],C,R):- R=C.
minEle([H|T], C, R):- H<C,minEle(T,H,R).
minEle([H|T], C, R):- H>=C,minEle(T,C,R).


%main(List l,int yes, List R)
%(i,o)
main(L,R):-minEle(L,999,Re),deleteElement(L,Re,0,Rez),R=Rez.
