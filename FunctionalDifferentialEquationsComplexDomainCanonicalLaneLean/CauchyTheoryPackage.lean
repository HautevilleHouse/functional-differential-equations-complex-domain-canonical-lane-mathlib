import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.FunctionalDifferentialEquationObjects

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure CauchyTheoryPackage where
  contourIntegralDefinition : Prop
  cauchyIntegralFormula : Prop
  analyticImpliesPowerSeries : Prop
  powerSeriesImpliesAnalytic : Prop
  cauchyEstimates : Prop

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.analyticImpliesPowerSeries ∧ C.powerSeriesImpliesAnalytic ∧ C.cauchyEstimates

theorem cauchy_theory_closed (C : CauchyTheoryPackage) (h1 : C.cauchyIntegralFormula) (h2 : C.analyticImpliesPowerSeries) (h3 : C.powerSeriesImpliesAnalytic) (h4 : C.cauchyEstimates) : CauchyTheoryClosed C := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse