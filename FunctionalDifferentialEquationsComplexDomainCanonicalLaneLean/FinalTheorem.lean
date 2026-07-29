import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

def ConstrainedFunctionalDifferentialEquationsComplexDomainClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_differential_equations_complex_domain_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalDifferentialEquationsComplexDomainClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse