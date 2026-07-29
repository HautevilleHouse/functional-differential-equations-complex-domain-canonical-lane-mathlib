import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.RiemannMappingPackage

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure AnalyticContinuationPackage where
  germExistence : Prop
  uniquenessAlongPath : Prop
  monodromyTheorem : Prop
  coveringSpaceConstruction : Prop

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.germExistence ∧ A.uniquenessAlongPath ∧ A.monodromyTheorem ∧ A.coveringSpaceConstruction

theorem analytic_continuation_closed (A : AnalyticContinuationPackage) (h1 : A.germExistence) (h2 : A.uniquenessAlongPath) (h3 : A.monodromyTheorem) (h4 : A.coveringSpaceConstruction) : AnalyticContinuationClosed A := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse