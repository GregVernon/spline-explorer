function tests = bernstein_basis_UnitTests
    tests = functiontests( localfunctions );
end

function test_linear_bernstein_basis__ReturnCorrectValue( testCase )
    basisDegree = 1;
    basisID = 1;
    basisDomain = [ 1.5 2.0 ];
    goldFunction = 4 - 2 * sym( "xi", "real" );
    testFunction = bernstein_basis( basisDegree, basisID, basisDomain );
    verifyEqual( testCase, testFunction, goldFunction );
end