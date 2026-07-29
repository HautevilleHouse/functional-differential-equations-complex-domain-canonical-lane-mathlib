import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

def ConstrainedFunctionalDifferentialEquationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_differential_equations_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalDifferentialEquationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse