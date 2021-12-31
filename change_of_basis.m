function mapValue = change_of_basis( referenceDomain, targetDomain )
    referenceVariate = sym( "xi", "real" );
    A = range( targetDomain ) / range( referenceDomain );
    b = targetDomain( 1 ) - referenceDomain( 1 );
    y = [ [ inv(A); 0 ] [ -inv(A) * b; 1 ] ] * [ referenceVariate; 1 ];
    mapValue = y( 1 : end-1 );
end