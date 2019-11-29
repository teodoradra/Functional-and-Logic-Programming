%isMountain(L list, t int)
%!  (i,i)
isMountain([l1,l2,l3 | L],T):- l1<l2,l2>l3, T1 is T+1, isMountain([l2,l2|L],T1).
isMountain([l1,l2,l3 | L],T):- l1<l2, l1<l3, isMountain([l2,l3|L],T).
isMountain([l1,l2,l3 | L],T):- l1>l2,l2>l3, isMountain([l2,l2|L],T).
isMountain([l1,l2],T):-T=1.
