classdef SplineSpace
    properties ( SetAccess = private )
        mDegree
        mContinuity
        mLength
    end

    methods
        function obj = SplineSpace( degreeList, continuityList, lengthList )
            obj.mDegree = degreeList;
            obj.mContinuity = continuityList;
            obj.mLength = lengthList;
        end

        function degreeList = get_degree_list( obj )
            degreeList = obj.mDegree;
        end

        function continuityList = get_continuity_list( obj )
            continuityList = obj.mContinuity;
        end

        function lengthList = get_length_list( obj )
            lengthList = obj.mLength;
        end
        
        function elementDegree = get_element_degree( obj, elementID )
            elementDegree = obj.mDegree( elementID );
        end

        function elementContinuities = get_element_continuities( obj, elementID )
            elementContinuities = [ obj.mContinuity( elementID ), obj.mContinuity( elementID + 1 ) ];
        end

        function elementLength = get_element_length( obj, elementID )
            elementLength = obj.mLength( elementID );
        end
    end
end