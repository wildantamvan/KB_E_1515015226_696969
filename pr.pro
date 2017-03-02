predicates
 nondeterm type(symbol,symbol,integer) /*disini kita pakai nondeterm semua agar tidak repot definisikan input output */
 nondeterm pabrikan(symbol,symbol)
 nondeterm arena(symbol,symbol) 
 nondeterm cocokdilumpur(symbol) 


clauses
  type(kawasaki,trailbike,150).
  type(honda,racebike,250).

  pabrikan(trailbike,kawasaki).
  pabrikan(sepeda,family).
  pabrikan(gerobak,artco).

  arena(kawasaki,lumpur).
  arena(honda,jalanan).
  arena(yamaha,sirkuit).
  arena(pulsar,pasar).

  cocokdilumpur(Y):-
	type(X,trailbike,150),
	pabrikan(Y,X),
	arena(X,lumpur).

goal
  cocokdilumpur(Motornya),
  write(Motornya," jago dilumpur\n").
