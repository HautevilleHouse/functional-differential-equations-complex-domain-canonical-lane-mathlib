import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def functionalEquationProjection : Projection FunctionalEquationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem functional_equation_projection_idempotent (x : FunctionalEquationEndgameState) :
    functionalEquationProjection.toFun (functionalEquationProjection.toFun x) = functionalEquationProjection.toFun x := by
  exact functionalEquationProjection.idempotent x

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse