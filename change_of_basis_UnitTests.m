function tests = change_of_basis_UnitTests
    tests = functiontests( localfunctions );
end

function test_identity_ReturnCorrectValue( testCase )
    referenceDomain = [ 0, 1 ];
    targetDomain = [ 0, 1 ];
    goldFunction = sym( "xi", "real" );
    testFunction = change_of_basis( referenceDomain, targetDomain );
    verifyEqual( testCase, testFunction, goldFunction );
end