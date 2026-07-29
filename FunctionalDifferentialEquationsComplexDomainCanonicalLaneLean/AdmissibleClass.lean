import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmittedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse
