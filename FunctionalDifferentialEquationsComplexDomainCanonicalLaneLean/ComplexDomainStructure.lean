import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure ComplexDomainStructure where
  domain : Set ℂ
  domainOpen : IsOpen domain
  domainConnected : IsConnected domain
  basePoint : ℂ
  basePointInDomain : basePoint ∈ domain

structure ComplexDomainEvidence (D : ComplexDomainStructure) where
  domainOpenClosed : D.domainOpen
  domainConnectedClosed : D.domainConnected
  basePointInDomainClosed : D.basePointInDomain

def ComplexDomainClosed (D : ComplexDomainStructure) : Prop :=
  D.domainOpen ∧ D.domainConnected ∧ D.basePoint ∈ D.domain

theorem complex_domain_closed_from_evidence (D : ComplexDomainStructure) (E : ComplexDomainEvidence D) : ComplexDomainClosed D := by
  exact And.intro E.domainOpenClosed (And.intro E.domainConnectedClosed E.basePointInDomainClosed)

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse