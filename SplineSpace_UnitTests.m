function tests = SplineSpace_UnitTests
    tests = functiontests( localfunctions );
end

function test_get_degree_list__GivenSplineSpaceReturnCorrectValue( testCase )
    degreeList = [ 1, 1 ];
    continuityList = [ -1, 0, -1 ];
    lengthList = [ 1, 1 ];
    splineSpace = SplineSpace( degreeList, continuityList, lengthList );
    goldDegreeList = degreeList;
    testDegreeList = splineSpace.get_degree_list();
    verifyEqual( testCase, testDegreeList, goldDegreeList );
end