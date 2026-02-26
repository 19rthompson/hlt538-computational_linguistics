%%% factorial(N,NF) NF is N!
factorial(0,1).
factorial(N,NF) :- M is N-1, factorial(M,MF), NF is N * MF.