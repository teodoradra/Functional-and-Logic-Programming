%a. Write a predicate to determine if a list has even numbers of
% elements without co%unting the elements from
%the list.
%
%evenNo(l1,..,ln,b) = evenNo(l2,..,ln,True), b=False
%                     evenNo(l2...,ln,False), b=true
%                     b,l=[]

%evenNo(List l, int EvenOrNot) - l-initial list
%(i,i)
evenNo([_|T],1):- evenNo(T,0).
evenNo([_|T],0):- evenNo(T,1).
evenNo([],1).

%evenNo([1,2,3],1)
%evenNo([],1)
%evenNo([1,2],1)
