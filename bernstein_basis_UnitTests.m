function tests = bernstein_basis_UnitTests
    tests = functiontests( localfunctions );
end

function test_constant_bernstein_basis__ReturnCorrectValue( testCase )
    xi = sym( "xi", "real" );
    basisDegree = 0;
    basisID = 1;
    basisDomain = [ 1.5 2.0 ];
    goldFunction = xi ^ 0; 
    testFunction = bernstein_basis( basisDegree, basisID, basisDomain );
    verifyEqual( testCase, testFunction, goldFunction );
end

function test_linear_bernstein_basis__ReturnCorrectValue( testCase )
    xi = sym( "xi", "real" );
    basisDegree = 1;
    basisDomain = [ 1.5 2.0 ];
    goldFunction = [ 4 - 2 * xi; 2 * xi - 3];
    for basisID = 1:2
        testFunction = bernstein_basis( basisDegree, basisID, basisDomain );
        verifyEqual( testCase, testFunction, goldFunction( basisID ) );
    end
end

function test_quadratic_bernstein_basis__ReturnCorrectValue( testCase )
    xi = sym( "xi", "real" );
    basisDegree = 2;
    basisDomain = [ -1, 1 ];
    goldFunction = [ ( ( xi - 1 ) / 2 ) ^ 2; 
                    -( ( xi - 1 ) / 2 ) * ( xi + 1 );
                     ( ( xi + 1 ) / 2 ) ^ 2 ];
    for basisID = 1:3
        testFunction = bernstein_basis( basisDegree, basisID, basisDomain );
        verifyEqual( testCase, testFunction, goldFunction( basisID ) );
    end
end