#############################################################################
##
#W  docxpl.tst          GAP package `fplsa'                     Thomas Breuer
##
#Y  Copyright (C)  2003,  Lehrstuhl D fuer Mathematik,  RWTH Aachen,  Germany
##
##  This file contains the {\GAP} code of the examples in the
##  documentation files.
##
gap> START_TEST("docxpl.tst");

#
gap> L:= FreeLieAlgebra( Rationals, "x", "y" );
<Lie algebra over Rationals, with 2 generators>
gap> g:= GeneratorsOfAlgebra( L );; x:= g[1];; y:= g[2];;
gap> rels:= [ x*(x*y) - x*y, y*(y*(x*y)) ];
[ (-1)*(x*y)+(1)*(x*(x*y)), (1)*(((x*y)*y)*y) ]
gap> SCAlgebraInfoOfFpLieAlgebra( L, rels, 100, true, true );
rec( 
  rels := [ (1)*((y*x)*x)+(1)*(y*x), (1)*(((y*x)*y)*y), (1)*(((y*x)*y)*(y*x)) 
     ], sc := <Lie algebra of dimension 4 over Rationals>, 
  words := [ (1)*x, (1)*y, (1)*(y*x), (1)*((y*x)*y) ] )

#
gap> L:= FreeLieAlgebra( Rationals, "x", "y" );
<Lie algebra over Rationals, with 2 generators>
gap> g:= GeneratorsOfAlgebra( L );; x:= g[1];; y:= g[2];;
gap> rels:= [ x*(x*y) - x*y, y*(y*(x*y)) ];
[ (-1)*(x*y)+(1)*(x*(x*y)), (1)*(((x*y)*y)*y) ]
gap> K:= L/rels;
<Lie algebra over Rationals, with 2 generators>
gap> IsomorphicSCAlgebra( K );
<Lie algebra of dimension 4 over Rationals>

#
gap> L:= FreeLieAlgebra( Rationals, "x", "y" );;
gap> g:= GeneratorsOfAlgebra( L );; x:= g[1];; y:= g[2];;
gap> rels:= [ x*(x*y) - x*y, y*(y*(x*y)) ];;
gap> SCAlgebraInfoOfFpLieAlgebra( L, rels, 100, true, true );;
gap> FPLSA;
rec( Lie_monomial_table_size := 1000000, Node_Lie_term_size := 2000000, 
  Node_scalar_factor_size := 2000, Node_scalar_term_size := 20000, 
  Relation_size := 2500000, 
  T := 
    [ [ [ [  ], [  ] ], [ [ 3 ], [ -1 ] ], [ [ 3 ], [ 1 ] ], [ [ 4 ], [ 1 ] ] 
         ], 
      [ [ [ 3 ], [ 1 ] ], [ [  ], [  ] ], [ [ 4 ], [ -1 ] ], [ [  ], [  ] ] ],
      [ [ [ 3 ], [ -1 ] ], [ [ 4 ], [ 1 ] ], [ [  ], [  ] ], [ [  ], [  ] ] ],
      [ [ [ 4 ], [ -1 ] ], [ [  ], [  ] ], [ [  ], [  ] ], [ [  ], [  ] ] ], 
      -1, 0 ], progname := "fplsa4", 
  rels := [ [ [ [ 2, 1 ], 1 ], 1, [ 2, 1 ], 1 ], 
      [ [ [ [ 2, 1 ], 2 ], 2 ], 1 ], [ [ [ [ 2, 1 ], 2 ], [ 2, 1 ] ], 1 ] ], 
  words := [ 1, 2, [ 2, 1 ], [ [ 2, 1 ], 2 ] ] )

#
gap> STOP_TEST( "docxpl.tst", 10000000 );

#############################################################################
##
#E
