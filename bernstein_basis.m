function basis = bernstein_basis( basisDegree, basisID, basisDomain )
    referenceDomain = [ 0, 1 ];
    variate = change_of_basis( referenceDomain, basisDomain );
    binomialCoefficient = nchoosek( basisDegree, basisID - 1 );
    basis = binomialCoefficient * ( variate ^ ( basisID - 1 ) ) * ( ( 1 - variate ) ^ ( basisDegree - ( basisID - 1 ) ) );
end