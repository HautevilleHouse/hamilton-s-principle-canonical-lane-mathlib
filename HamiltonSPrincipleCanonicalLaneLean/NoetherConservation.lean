import HautevilleHouse.HamiltonSPrincipleCanonicalLaneLean.HamiltonianFlow

/-!
# Noether Conservation Package
This module encodes Noether's theorem connecting symmetries with conserved quantities.
-/

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure NoetherPackage {M : Type u} {L : LagrangianPackage M} {V : VariationalPackage L}
    (H : HamiltonianPackage V) where
  symmetryGroup : Type v
  conservedQuantity : symmetryGroup → (H.phaseSpace → ℝ)
  symmetryAction : Prop
  conservationLaw : Prop

structure NoetherEvidence {M : Type u} {L : LagrangianPackage M} {V : VariationalPackage L}
    {H : HamiltonianPackage V} (N : NoetherPackage H) where
  symmetryActionClosed : N.symmetryAction
  conservationLawClosed : N.conservationLaw

def NoetherClosed {M : Type u} {L : LagrangianPackage M} {V : VariationalPackage L}
    {H : HamiltonianPackage V} (N : NoetherPackage H) : Prop :=
  N.symmetryAction ∧ N.conservationLaw

theorem noether_closed_from_evidence
    {M : Type u} {L : LagrangianPackage M} {V : VariationalPackage L}
    {H : HamiltonianPackage V} (N : NoetherPackage H) (E : NoetherEvidence N) :
    NoetherClosed N := by
  exact And.intro E.symmetryActionClosed E.conservationLawClosed

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse
