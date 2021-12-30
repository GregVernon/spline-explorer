function tests = SplineSpace_UnitTests
    tests = functiontests( localfunctions );
end

function test_get_degree_list__ReturnCorrectValue( testCase )
    splineSpace = create_case_uniform_N2P1C0;
    goldDegreeList = [ 1, 1 ];
    testDegreeList = splineSpace.get_degree_list();
    verifyEqual( testCase, testDegreeList, goldDegreeList );
end

function test_get_continuity_list__ReturnCorrectValue( testCase )
    splineSpace = create_case_uniform_N2P1C0;
    goldContinuityList = [ -1, 0, -1 ];
    testContinuityList = splineSpace.get_continuity_list();
    verifyEqual( testCase, testContinuityList, goldContinuityList );
end

function test_get_length_list__ReturnCorrectValue( testCase )
    splineSpace = create_case_uniform_N2P1C0;
    goldLengthList = [ 1, 1 ];
    testLengthList = splineSpace.get_length_list();
    verifyEqual( testCase, testLengthList, goldLengthList );
end

function test_get_element_degree__ReturnCorrectValue( testCase )
    splineSpace = create_case_uspline_N3;
    goldElementDegree = [ 1, 2, 3 ];
    for elementID = 1:length( goldElementDegree )
        testElementDegree = splineSpace.get_element_degree( elementID );
        verifyEqual( testCase, testElementDegree, goldElementDegree( elementID ) );
    end
end

function test_get_element_continuities__ReturnCorrectValue( testCase )
    splineSpace = create_case_uniform_N2P1C0;
    goldElementContinuity = { [ -1, 0 ], [ 0, -1 ] };
    for elementID = 1:length( goldElementContinuity )
        testElementContinuity = splineSpace.get_element_continuities( elementID );
        verifyEqual( testCase, testElementContinuity, goldElementContinuity{ elementID } );
    end
end

%% UTILITY FUNCTIONS
function splineSpace = create_case_uniform_N2P1C0
    splineSpace = SplineSpace( [ 1, 1 ], [ -1, 0, -1 ], [ 1, 1 ] );
end

function splineSpace = create_case_uspline_N3
    splineSpace = SplineSpace( [ 1, 2, 3 ], [ -1, 1, 2, -1 ], [ 1, 1, 1 ] );
end