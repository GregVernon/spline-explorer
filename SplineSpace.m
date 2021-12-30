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

        function interfaceContinuity = get_interface_continuity( obj, interfaceID )
            interfaceContinuity = obj.mContinuity( interfaceID );
        end

        function interfaceDegrees = get_interface_degrees( obj, interfaceID )
            elementIDs = [ interfaceID - 1, interfaceID ];
            if interfaceID == 1
                interfaceDegrees = [ missing, obj.mDegree( elementIDs( end ) ) ];
            elseif interfaceID == length( obj.mContinuity )
                interfaceDegrees = [ obj.mDegree( elementIDs( 1 ) ), missing ];
            else
                interfaceDegrees = [ obj.mDegree( elementIDs( 1 ) ), obj.mDegree( elementIDs( end ) ) ];
            end
        end
    end
    
    methods ( Static )
        function elementIDs = get_element_ids_from_interface_id( interfaceID )
            elementIDs = [ interfaceID - 1, interfaceID ];
        end
    end
end