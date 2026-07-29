import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure AnalyticContinuationPackage where
  localAnalyticElement : Prop
  analyticContinuationAlongPath : Prop
  monodromyTheorem : Prop
  multivaluednessResolution : Prop
  sheafOfGerms : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  localAnalyticElementClosed : A.localAnalyticElement
  analyticContinuationAlongPathClosed : A.analyticContinuationAlongPath
  monodromyTheoremClosed : A.monodromyTheorem
  multivaluednessResolutionClosed : A.multivaluednessResolution
  sheafOfGermsClosed : A.sheafOfGerms

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.localAnalyticElement ∧ A.analyticContinuationAlongPath ∧
  A.monodromyTheorem ∧ A.multivaluednessResolution ∧ A.sheafOfGerms

theorem analytic_continuation_closed_from_evidence
    (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) :
    AnalyticContinuationClosed A := by
  exact And.intro E.localAnalyticElementClosed
    (And.intro E.analyticContinuationAlongPathClosed
      (And.intro E.monodromyTheoremClosed
        (And.intro E.multivaluednessResolutionClosed E.sheafOfGermsClosed)))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse
