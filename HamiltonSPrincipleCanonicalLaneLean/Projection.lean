import HautevilleHouse.HamiltonSPrincipleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def hamiltonProjection : Projection HamiltonEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem hamilton_projection_idempotent (x : HamiltonEndgameState) :
    hamiltonProjection.toFun (hamiltonProjection.toFun x) = hamiltonProjection.toFun x := by
  exact hamiltonProjection.idempotent x

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse
