import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure ComplexFunctionalDifferentialEquationsLayerPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  equationFamily : Type v
  solutionSpace : Type w
  existenceTheorem : Prop
  uniquenessTheorem : Prop
  analyticDependenceOnParameters : Prop

structure ComplexFunctionalDifferentialEquationsLayerEvidence
    (C : ComplexFunctionalDifferentialEquationsLayerPackage) where
  existenceTheoremClosed : C.existenceTheorem
  uniquenessTheoremClosed : C.uniquenessTheorem
  analyticDependenceOnParametersClosed : C.analyticDependenceOnParameters

def ComplexFunctionalDifferentialEquationsLayerClosed
    (C : ComplexFunctionalDifferentialEquationsLayerPackage) : Prop :=
  C.existenceTheorem ∧ C.uniquenessTheorem ∧ C.analyticDependenceOnParameters

theorem complex_functional_differential_equations_layer_closed_from_evidence
    (C : ComplexFunctionalDifferentialEquationsLayerPackage)
    (E : ComplexFunctionalDifferentialEquationsLayerEvidence C) :
    ComplexFunctionalDifferentialEquationsLayerClosed C := by
  exact And.intro E.existenceTheoremClosed
    (And.intro E.uniquenessTheoremClosed E.analyticDependenceOnParametersClosed)

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse