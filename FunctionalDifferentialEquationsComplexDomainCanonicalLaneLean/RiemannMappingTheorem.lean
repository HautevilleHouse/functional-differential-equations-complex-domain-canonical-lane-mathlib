import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure RiemannMappingTheoremPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  simplyConnected : Prop
  conformalMapToUnitDisk : Prop
  existenceOfMapping : Prop
  uniquenessUpToAutomorphism : Prop

structure RiemannMappingTheoremEvidence (R : RiemannMappingTheoremPackage) where
  simplyConnectedClosed : R.simplyConnected
  conformalMapToUnitDiskClosed : R.conformalMapToUnitDisk
  existenceOfMappingClosed : R.existenceOfMapping
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism

def RiemannMappingTheoremClosed (R : RiemannMappingTheoremPackage) : Prop :=
  R.simplyConnected ∧ R.conformalMapToUnitDisk ∧
  R.existenceOfMapping ∧ R.uniquenessUpToAutomorphism

theorem riemann_mapping_theorem_closed_from_evidence
    (R : RiemannMappingTheoremPackage) (E : RiemannMappingTheoremEvidence R) :
    RiemannMappingTheoremClosed R := by
  exact And.intro E.simplyConnectedClosed
    (And.intro E.conformalMapToUnitDiskClosed
      (And.intro E.existenceOfMappingClosed E.uniquenessUpToAutomorphismClosed))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse