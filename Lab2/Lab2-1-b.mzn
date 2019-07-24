var 1..9: T;
var 0..9: W;
var 0..9: O;
var 1..9: F;
var 0..9: U;
var 0..9: R;

constraint    
(100*T + 10*W + O) * 2
= 1000*F + 100*O + 10*U + R;

include "alldifferent.mzn";
constraint alldifferent([T,W,O,F,U,R]);
solve maximize 1000*F + 100*O + 10*U + R;