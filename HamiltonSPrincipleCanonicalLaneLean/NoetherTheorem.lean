import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure NoetherTheoremPackage where
  continuousSymmetry : Type u
  conservedQuantity : Type v
  symmetryLeadsToConservation : Prop

structure NoetherTheoremEvidence (N : NoetherTheoremPackage) where
  symmetryLeadsToConservationClosed : N.symmetryLeadsToConservation

def NoetherTheoremClosed (N : NoetherTheoremPackage) : Prop :=
  N.symmetryLeadsToConservation

theorem noether_theorem_closed_from_evidence (N : NoetherTheoremPackage)
    (ev : NoetherTheoremEvidence N) : NoetherTheoremClosed N :=
  ev.symmetryLeadsToConservationClosed

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse