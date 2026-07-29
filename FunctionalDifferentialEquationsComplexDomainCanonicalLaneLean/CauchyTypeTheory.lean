import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure CauchyTypeTheoryPackage where
  contourIntegration : Prop
  representationFormula : Prop
  analyticContinuation : Prop
  singularIntegralTreatment : Prop

structure CauchyTypeTheoryEvidence (C : CauchyTypeTheoryPackage) where
  contourIntegrationClosed : C.contourIntegration
  representationFormulaClosed : C.representationFormula
  analyticContinuationClosed : C.analyticContinuation
  singularIntegralTreatmentClosed : C.singularIntegralTreatment

def CauchyTypeTheoryClosed (C : CauchyTypeTheoryPackage) : Prop :=
  C.contourIntegration ∧ C.representationFormula ∧
  C.analyticContinuation ∧ C.singularIntegralTreatment

theorem cauchy_type_theory_closed_from_evidence
    (C : CauchyTypeTheoryPackage) (E : CauchyTypeTheoryEvidence C) :
    CauchyTypeTheoryClosed C := by
  exact And.intro E.contourIntegrationClosed
    (And.intro E.representationFormulaClosed
      (And.intro E.analyticContinuationClosed E.singularIntegralTreatmentClosed))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse