import FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FunctionalEquationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FunctionalEquationAdmittedObject where
  space : FunctionalEquationSpace
  domainSatisfied : Prop
  functionalEquationHolds : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionConstructible : Prop
  conclusion : solutionConstructible

structure FunctionalEquationEndgameState where
  object : FunctionalEquationAdmittedObject

def FunctionalEquationWitnessClosed (O : FunctionalEquationAdmittedObject) : Prop :=
  O.solutionConstructible

end FunctionalDifferentialEquationsComplexDomainCanonicalLaneLean
end HautevilleHouse