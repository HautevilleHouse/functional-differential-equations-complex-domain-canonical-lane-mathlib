import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure RiemannMappingTheoryPackage where
  simplyConnectedDomain : Prop
  conformalMap : Prop
  boundaryCorrespondence : Prop
  uniqueness : Prop

structure RiemannMappingTheoryEvidence (R : RiemannMappingTheoryPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalMapClosed : R.conformalMap
  boundaryCorrespondenceClosed : R.boundaryCorrespondence
  uniquenessClosed : R.uniqueness

def RiemannMappingTheoryClosed (R : RiemannMappingTheoryPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalMap ∧
  R.boundaryCorrespondence ∧ R.uniqueness

theorem riemann_mapping_theory_closed_from_evidence
    (R : RiemannMappingTheoryPackage) (E : RiemannMappingTheoryEvidence R) :
    RiemannMappingTheoryClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalMapClosed
      (And.intro E.boundaryCorrespondenceClosed E.uniquenessClosed))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse