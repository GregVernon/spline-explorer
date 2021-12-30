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
    end
end