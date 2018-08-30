/*
	Testing study_plan.pl
	loriacarlos@gmail.com


	Ernesto Valerio Henández - 402070512
	José Fabio Alfaro Quesada - 207580494

*/
:- ['pl.ini'].
:- ['../prolog_output/study_plan'].

all_leaves(AL) :- findall(X, course_req(_, X), REQ), findall(Y, course(Y), COUR), subtract(COUR, REQ, AL).

