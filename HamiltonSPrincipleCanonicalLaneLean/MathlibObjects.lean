import HautevilleHouse.HamiltonSPrincipleCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HamiltonSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HamiltonAdmittedObject where
  space : HamiltonSpace
  actionFunctionalDefined : Prop
  stationarityCondition : Prop
  eulerLagrangeEquations : Prop
  conclusion : eulerLagrangeEquations

structure HamiltonEndgameState where
  object : HamiltonAdmittedObject

def HamiltonWitnessClosed (O : HamiltonAdmittedObject) : Prop :=
  O.eulerLagrangeEquations

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse
