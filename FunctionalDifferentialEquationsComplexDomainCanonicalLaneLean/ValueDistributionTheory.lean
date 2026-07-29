import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure ValueDistributionTheoryPackage where
  meromorphicFunction : Type
  defectRelation : Prop
  deficiencySum : Prop
  nevanlinnaCharacteristic : Prop

structure ValueDistributionTheoryEvidence (V : ValueDistributionTheoryPackage) where
  meromorphicFunctionClosed : V.meromorphicFunction
  defectRelationClosed : V.defectRelation
  deficiencySumClosed : V.deficiencySum
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic

def ValueDistributionTheoryClosed (V : ValueDistributionTheoryPackage) : Prop :=
  V.meromorphicFunction ∧ V.defectRelation ∧
  V.deficiencySum ∧ V.nevanlinnaCharacteristic

theorem value_distribution_theory_closed_from_evidence
    (V : ValueDistributionTheoryPackage) (E : ValueDistributionTheoryEvidence V) :
    ValueDistributionTheoryClosed V := by
  exact And.intro E.meromorphicFunctionClosed
    (And.intro E.defectRelationClosed
      (And.intro E.deficiencySumClosed E.nevanlinnaCharacteristicClosed))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse