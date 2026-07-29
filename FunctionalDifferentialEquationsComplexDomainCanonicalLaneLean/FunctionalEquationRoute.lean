import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.FunctionalEquationAdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure FunctionalEquationRoute (A : AdmissibleClass) where
  admissibleClass : FunctionalEquationAdmissibleClass A
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem functional_equation_route_yields_constrained_closure (A : AdmissibleClass) (R : FunctionalEquationRoute A) : ConstrainedFunctionalEquationClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse