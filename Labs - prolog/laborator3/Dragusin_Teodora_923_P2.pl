%a. Sort a list with keeping double values in resulted list. E.g.: [4 2 6 2 3 4] --> [2 2 3 4 4 6]
%b. For a heterogeneous list, formed from integer numbers and list of numbers, write a predicate to sort every
%sublist, keeping the doubles

%bubble_sort(List - List, Sorted - List)
%(i,o)
bubble_sort(List,Sorted):-b_sort(List,[],Sorted).


%b_sort(l1...ln) =                 []    		 , L=[]
%			bubble(l1...ln,R) U b_sort(R), otherwise
%b_sort(L - List, Acc- List, Sorted - List)
%(i,i,o)
b_sort([],R,R).
b_sort([H|T],Acc,Sorted):-bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Sorted).
   

%bubble(x,l1..ln,R) =              x          , L=[]
%					  bubble(x,l2..ln,l1 U R) , x > l1
%					  bubble(l1,l2..ln,x U R) , x >= l1
%bubble(X - int, L - List, NT - List, Max - int).
%(i,i,o,o)
bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):-X>Y,bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):-X=<Y,bubble(Y,T,NT,Max).


%%main(List l , R list)
%i,o
main([],[]).
main([H|T], R) :- is_list(H),bubble_sort(H,Sorted),main(T,R2),R=[Sorted|R2].
main([H|T],R) :- main(T,R1),R=[H|R1].
