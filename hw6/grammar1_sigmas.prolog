%%% Alphabet: {a, b}
sigma(a).
sigma(b).

%%% Σ*
sigmastar([]).
sigmastar([X|L]) :- sigmastar(L), sigma(X).
