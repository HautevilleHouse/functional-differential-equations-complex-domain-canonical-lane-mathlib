import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FunctionalDifferentialEquationObject where
  domain : Type
  domainTopology : TopologicalSpace domain
  unknownFunction : domain → ℂ
  equation : Prop
  analyticContinuationPossible : Prop
  conclusion : analyticContinuationPossible

def FunctionalDifferentialEquationWitnessClosed (O : FunctionalDifferentialEquationObject) : Prop :=
  O.analyticContinuationPossible

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse