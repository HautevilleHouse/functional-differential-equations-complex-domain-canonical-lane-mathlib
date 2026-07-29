import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure ComplexCauchyTheoryPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  holomorphicFunctions : Prop
  contourIntegralDefined : Prop
  cauchyIntegralFormula : Prop
  analyticContinuation : Prop
  residueTheorem : Prop

structure ComplexCauchyTheoryEvidence (C : ComplexCauchyTheoryPackage) where
  holomorphicFunctionsClosed : C.holomorphicFunctions
  contourIntegralDefinedClosed : C.contourIntegralDefined
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticContinuationClosed : C.analyticContinuation
  residueTheoremClosed : C.residueTheorem

def ComplexCauchyTheoryClosed (C : ComplexCauchyTheoryPackage) : Prop :=
  C.holomorphicFunctions ∧ C.contourIntegralDefined ∧
  C.cauchyIntegralFormula ∧ C.analyticContinuation ∧ C.residueTheorem

theorem complex_cauchy_theory_closed_from_evidence
    (C : ComplexCauchyTheoryPackage) (E : ComplexCauchyTheoryEvidence C) :
    ComplexCauchyTheoryClosed C := by
  exact And.intro E.holomorphicFunctionsClosed
    (And.intro E.contourIntegralDefinedClosed
      (And.intro E.cauchyIntegralFormulaClosed
        (And.intro E.analyticContinuationClosed E.residueTheoremClosed)))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse