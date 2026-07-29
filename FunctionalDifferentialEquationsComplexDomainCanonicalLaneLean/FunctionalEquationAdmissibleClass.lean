import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.ValueDistribution

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure FunctionalEquationAdmissibleClass (A : AdmissibleClass) where
  domainStructure : ComplexDomainStructure
  cauchyTheoryEvidence : CauchyTheoryEvidence (CauchyTheoryPackage.mk (sorry))
  riemannMappingEvidence : RiemannMappingEvidence (RiemannMappingPackage.mk (sorry))
  analyticContinuationEvidence : AnalyticContinuationEvidence (AnalyticContinuationPackage.mk (sorry))
  valueDistributionEvidence : ValueDistributionEvidence (ValueDistributionPackage.mk (sorry))

def FunctionalEquationAdmissibleClassClosed {A : AdmissibleClass} (F : FunctionalEquationAdmissibleClass A) : Prop :=
  ComplexDomainClosed F.domainStructure ∧
  CauchyTheoryClosed (CauchyTheoryPackage.mk (sorry)) ∧
  RiemannMappingClosed (RiemannMappingPackage.mk (sorry)) ∧
  AnalyticContinuationClosed (AnalyticContinuationPackage.mk (sorry)) ∧
  ValueDistributionClosed (ValueDistributionPackage.mk (sorry))

theorem functional_equation_admissible_class_closed {A : AdmissibleClass} (F : FunctionalEquationAdmissibleClass A) : FunctionalEquationAdmissibleClassClosed F := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact complex_domain_closed_from_evidence F.domainStructure F.cauchyTheoryEvidence
  · exact cauchy_theory_closed_from_evidence (CauchyTheoryPackage.mk (sorry)) F.cauchyTheoryEvidence
  · exact riemann_mapping_closed_from_evidence (RiemannMappingPackage.mk (sorry)) F.riemannMappingEvidence
  · exact analytic_continuation_closed_from_evidence (AnalyticContinuationPackage.mk (sorry)) F.analyticContinuationEvidence
  · exact value_distribution_closed_from_evidence (ValueDistributionPackage.mk (sorry)) F.valueDistributionEvidence

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse