is_correct_pos(C,Cpos,0):- P is 2*C+1, P<Cpos, C=\=(-1) , Incc is C +1,is_correct_pos(Incc,Cpos,0).
is_correct_pos(C,Cpos,0):- P is 2*C+1, P>Cpos,is_correct_pos(-1,Cpos,0).
is_correct_pos(C,Cpos,0):- P is 2*C+1, P=:=Cpos,is_correct_pos(C,Cpos,1).
is_correct_pos(_,_,1).


change([_|T],Cpos,Res,R):- is_correct_pos(0,Cpos,0), C is Cpos + 1, change(T,C,[Cpos|Res],R).
change([H|T],Cpos,Res,R):- not(is_correct_pos(0,Cpos,0)), C is Cpos + 1, change(T,C,[H|Res],R).
change([],_,R,R).
