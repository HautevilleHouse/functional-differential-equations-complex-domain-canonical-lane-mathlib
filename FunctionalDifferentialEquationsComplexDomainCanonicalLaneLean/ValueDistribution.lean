import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure ValueDistributionPackage where
  picardLittleTheorem : Prop
  picardGreatTheorem : Prop
  normalFamilies : Prop
  juliaSetDescription : Prop
  applicationToFDE : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  picardLittleTheoremClosed : V.picardLittleTheorem
  picardGreatTheoremClosed : V.picardGreatTheorem
  normalFamiliesClosed : V.normalFamilies
  juliaSetDescriptionClosed : V.juliaSetDescription
  applicationToFDEClosed : V.applicationToFDE

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.picardLittleTheorem ∧ V.picardGreatTheorem ∧
  V.normalFamilies ∧ V.juliaSetDescription ∧ V.applicationToFDE

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.picardLittleTheoremClosed
    (And.intro E.picardGreatTheoremClosed
      (And.intro E.normalFamiliesClosed
        (And.intro E.juliaSetDescriptionClosed E.applicationToFDEClosed)))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse
