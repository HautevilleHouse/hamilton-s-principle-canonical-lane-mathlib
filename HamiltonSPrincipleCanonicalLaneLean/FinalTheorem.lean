import canonicalLaneMathlib.AdmissibleClass
import HamiltonSPrincipleCanonicalLaneLean.BridgeLemmas
import HamiltonSPrincipleCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

def ConstrainedHamiltonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hamilton_endgame (A : AdmissibleClass) :
    ConstrainedHamiltonClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse