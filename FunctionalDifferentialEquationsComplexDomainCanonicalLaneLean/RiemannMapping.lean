import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalMappingToDisk : Prop
  boundaryBehavior : Prop
  uniquenessUpToAutomorphism : Prop
  applicationToFDE : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalMappingToDiskClosed : R.conformalMappingToDisk
  boundaryBehaviorClosed : R.boundaryBehavior
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism
  applicationToFDEClosed : R.applicationToFDE

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalMappingToDisk ∧
  R.boundaryBehavior ∧ R.uniquenessUpToAutomorphism ∧ R.applicationToFDE

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalMappingToDiskClosed
      (And.intro E.boundaryBehaviorClosed
        (And.intro E.uniquenessUpToAutomorphismClosed E.applicationToFDEClosed)))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse
