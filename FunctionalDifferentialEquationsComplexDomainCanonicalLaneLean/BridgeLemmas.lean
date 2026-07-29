import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse
