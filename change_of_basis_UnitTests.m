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

function test_translation_only_ReturnCorrectValue( testCase )
    referenceDomain = [ 0, 1 ];
    targetDomain = [ 1, 2 ];
    xi = sym( "xi", "real" );
    goldFunction =  xi - 1;
    testFunction = change_of_basis( referenceDomain, targetDomain );
    verifyEqual( testCase, testFunction, goldFunction );
end

function test_scale_only_ReturnCorrectValue( testCase )
    referenceDomain = [ 0, 1 ];
    targetDomain = [ 0, 0.5 ];
    xi = sym( "xi", "real" );
    goldFunction =  2 * xi;
    testFunction = change_of_basis( referenceDomain, targetDomain );
    verifyEqual( testCase, testFunction, goldFunction );
end