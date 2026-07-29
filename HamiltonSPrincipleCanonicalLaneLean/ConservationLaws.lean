import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure ConservationPackage {H : HamiltonPrinciplePackage} {L : LagrangianPackage H} (E : EulerLagrangePackage L) where
  noetherCurrent : Type u
  energyConservation : Prop
  momentumConservation : Prop
  symmetryGroup : Prop

structure ConservationEvidence {H : HamiltonPrinciplePackage} {L : LagrangianPackage H} {E : EulerLagrangePackage L}
    (C : ConservationPackage E) where
  noetherCurrentClosed : C.noetherCurrent
  energyConservationClosed : C.energyConservation
  momentumConservationClosed : C.momentumConservation
  symmetryGroupClosed : C.symmetryGroup

def ConservationClosed {H : HamiltonPrinciplePackage} {L : LagrangianPackage H} {E : EulerLagrangePackage L}
    (C : ConservationPackage E) : Prop := C.noetherCurrent ∧ C.energyConservation ∧ C.momentumConservation ∧ C.symmetryGroup

theorem conservation_closed_from_evidence {H : HamiltonPrinciplePackage} {L : LagrangianPackage H} {E : EulerLagrangePackage L}
    (C : ConservationPackage E) (Ev : ConservationEvidence C) : ConservationClosed C := by
  exact And.intro Ev.noetherCurrentClosed
    (And.intro Ev.energyConservationClosed
      (And.intro Ev.momentumConservationClosed Ev.symmetryGroupClosed))

end HautevilleHouse
end HamiltonSPrincipleCanonicalLaneLean
