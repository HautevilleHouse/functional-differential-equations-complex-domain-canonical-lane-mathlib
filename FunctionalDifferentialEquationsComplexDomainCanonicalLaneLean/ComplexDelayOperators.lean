import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure ComplexDelayOperatorPackage where
  delayFunctions : Type
  operatorFamily : Type
  analyticContinuationProperty : Prop
  singularSupport : Prop
  growthBound : Prop

structure ComplexDelayOperatorEvidence (D : ComplexDelayOperatorPackage) where
  analyticContinuationPropertyClosed : D.analyticContinuationProperty
  singularSupportClosed : D.singularSupport
  growthBoundClosed : D.growthBound

def ComplexDelayOperatorClosed (D : ComplexDelayOperatorPackage) : Prop :=
  D.analyticContinuationProperty ∧ D.singularSupport ∧ D.growthBound

theorem complex_delay_operator_closed_from_evidence
    (D : ComplexDelayOperatorPackage) (E : ComplexDelayOperatorEvidence D) :
    ComplexDelayOperatorClosed D := by
  exact And.intro E.analyticContinuationPropertyClosed
    (And.intro E.singularSupportClosed E.growthBoundClosed)

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse