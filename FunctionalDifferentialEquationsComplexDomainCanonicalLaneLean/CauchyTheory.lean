import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure CauchyTheoryPackage where
  contourIntegral : Prop
  cauchyIntegralFormula : Prop
  analyticityFromIntegral : Prop
  powerSeriesExpansion : Prop
  residueTheorem : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  contourIntegralClosed : C.contourIntegral
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticityFromIntegralClosed : C.analyticityFromIntegral
  powerSeriesExpansionClosed : C.powerSeriesExpansion
  residueTheoremClosed : C.residueTheorem

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.contourIntegral ∧ C.cauchyIntegralFormula ∧
  C.analyticityFromIntegral ∧ C.powerSeriesExpansion ∧ C.residueTheorem

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage)
    (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.contourIntegralClosed
    (And.intro E.cauchyIntegralFormulaClosed
      (And.intro E.analyticityFromIntegralClosed
        (And.intro E.powerSeriesExpansionClosed E.residueTheoremClosed)))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse
