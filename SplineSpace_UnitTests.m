function tests = SplineSpace_UnitTests
    tests = functiontests( localfunctions );
end

function test_get_degree_list__GivenSplineSpaceReturnCorrectValue( testCase )
    splineSpace = create_case_uniform_N2P1C0;
    goldDegreeList = [ 1, 1 ];
    testDegreeList = splineSpace.get_degree_list();
    verifyEqual( testCase, testDegreeList, goldDegreeList );
end

function test_get_continuity_list__GivenSplineSpaceReturnCorrectValue( testCase )
    splineSpace = create_case_uniform_N2P1C0;
    goldContinuityList = [ -1, 0, -1 ];
    testContinuityList = splineSpace.get_continuity_list();
    verifyEqual( testCase, testContinuityList, goldContinuityList );
end

%% UTILITY FUNCTIONS
function splineSpace = create_case_uniform_N2P1C0
    splineSpace = SplineSpace( [ 1, 1 ], [ -1, 0, -1 ], [ 1, 1 ] );
end