import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.CauchyTheoryPackage

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedRegion : Prop
  existsBiholomorphicMapToDisk : Prop
  uniquenessUpToAutomorphism : Prop

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedRegion → R.existsBiholomorphicMapToDisk ∧ R.uniquenessUpToAutomorphism

theorem riemann_mapping_closed (R : RiemannMappingPackage) (h : R.simplyConnectedRegion) (h1 : R.existsBiholomorphicMapToDisk) (h2 : R.uniquenessUpToAutomorphism) : RiemannMappingClosed R := by
  intro hs
  exact And.intro h1 h2

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse