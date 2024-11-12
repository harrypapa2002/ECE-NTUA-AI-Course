/* 1, 2, 3 */

commonGenre(X, Y, G) :- genre(X, G), genre(Y, G), X \= Y.

atLeastOneCommonGenre(X, Y) :- commonGenre(X, Y, G1).

atLeastTwoCommonGenres(X, Y) :- commonGenre(X, Y, G1), commonGenre(X, Y, G2), G1 \= G2.

atLeastThreeCommonGenres(X, Y) :- commonGenre(X, Y, G1), commonGenre(X, Y, G2), commonGenre(X, Y, G3), G1 \= G2, G1 \= G3, G2 \= G3.

atLeastFourCommonGenres(X, Y) :- commonGenre(X, Y, G1), commonGenre(X, Y, G2), commonGenre(X, Y, G3), commonGenre(X, Y, G4), G1 \= G2, G1 \= G3, G1 \= G4, G2 \= G3, G2 \= G4, G3 \= G4.


/* 4 */

sameDirector(X, Y) :- director(X, D), director(Y, D), X \= Y.


/* 5, 6 */

commonKeyword(X, Y, K) :- plot_keyword(X, K), plot_keyword(Y, K), X \= Y.

atLeastOneCommonKeyword(X, Y) :- commonKeyword(X, Y, K1).

atLeastTwoCommonKeywords(X, Y) :- commonKeyword(X, Y, K1), commonKeyword(X, Y, K2), K1 \= K2.

atLeastThreeCommonKeywords(X, Y) :- commonKeyword(X, Y, K1), commonKeyword(X, Y, K2), commonKeyword(X, Y, K3), K1 \= K2, K1 \= K3, K2 \= K3.

atLeastFiveCommonKeywords(X, Y) :- commonKeyword(X, Y, K1), commonKeyword(X, Y, K2), commonKeyword(X, Y, K3), commonKeyword(X, Y, K4), commonKeyword(X, Y, K5), K1 \= K2, K1 \= K3, K1 \= K4, K1 \=K5, K2 \= K3, K2 \= K4, K2 \= K5, K3 \= K4, K3 \= K5, K4 \= K5.



/* 7, 8, 9 */

commonActor(X, Y, A) :- actor(X, A), actor(Y, A), X \= Y.

atLeastOneCommonActor(X, Y) :- commonActor(X, Y, A1).

atLeastTwoCommonActors(X, Y) :- commonActor(X, Y, A1), commonActor(X, Y, A2), A1 \= A2.

allThreeCommonActors(X, Y) :- commonActor(X, Y, A1), commonActor(X, Y, A2), commonActor(X, Y, A3), A1 \= A2, A1 \= A3, A2 \= A3.



/* 10 */

sameLanguage(X, Y) :- language(X, LA), language(Y, LA), X \= Y.


/* 11 */

/* no rule needed */

/* 12  */

commonProductionCompany(X, Y, C):- production_company(X, C), production_company(Y, C), X \= Y.

atLeastOneCommonProductionCompany(X, Y):- commonProductionCompany(X, Y, C).

atLeastTwoCommonProductionCompanies(X, Y):- commonProductionCompany(X, Y, C1), commonProductionCompany(X, Y, C2), C1 \= C2.

/* 13 */
commonProductionCountry(X, Y, C) :- production_country(X, C), production_country(Y, C), X \= Y.

/* 14 */
sameDecade(X, Y, D) :- decade(X, D), decade(Y, D), X \= Y.


/* rules */

find_similar_movies_1(X, Y) :- atLeastOneCommonGenre(X, Y).

find_similar_movies_2(X, Y) :-  atLeastOneCommonActor(X, Y), sameLanguage(X, Y).

find_similar_movies_3(X, Y) :- atLeastOneCommonGenre(X, Y), atLeastOneCommonActor(X, Y), sameLanguage(X, Y) ; (atLeastTwoCommonGenres(X,Y) , atLeastTwoCommonKeywords(X, Y), sameLanguage(X, Y)).

find_similar_movies_4(X, Y) :- sameDirector(X,Y) ; atLeastTwoCommonActors(X, Y) , atLeastOneCommonGenre(X, Y) ; (atLeastOneCommonProductionCompany(X, Y), atLeastOneCommonActor(X, Y),  atLeastOneCommonKeyword(X, Y)).

find_similar_movies_5(X, Y) :-  sameDirector(X,Y) , atLeastOneCommonGenre(X, Y) ; atLeastTwoCommonActors(X, Y), atLeastOneCommonGenre(X, Y) ; allThreeCommonActors(X, Y) ; (atLeastTwoCommonProductionCompanies(X, Y) , atLeastTwoCommonGenres(X, Y), atLeastTwoCommonKeywords(X, Y), commonProductionCountry(X, Y, C)).

