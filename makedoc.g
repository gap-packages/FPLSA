##  makedoc.g for the FPLSA package
##  this creates the package documentation  
##  needs: GAPDoc and AutoDoc packages, latex, pdflatex, mkindex 
##  call this with GAP from within the package root directory 
##  
LoadPackage( "AutoDoc" );

AutoDoc( rec( 
    scaffold := rec(
        includes := [ "manual.xml" ],
        entities := rec( 
            FPLSA := "<Package>FPLSA</Package>",
        ),
    )
));
