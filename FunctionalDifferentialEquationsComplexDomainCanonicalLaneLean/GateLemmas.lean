import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse