import HamiltonSPrincipleCanonicalLaneLean.ActionFunctional

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure CanonicalHamiltonianFlow where
  lagrangian : Type u → Type v
  legendreTransform : Prop
  hamiltonian : Type w
  canonicalEquations : Prop
  phaseSpace : Type x
  flowPreservesSymplecticForm : Prop

structure CanonicalHamiltonianFlowEvidence (H : CanonicalHamiltonianFlow) where
  legendreTransformClosed : H.legendreTransform
  canonicalEquationsClosed : H.canonicalEquations
  flowPreservesSymplecticFormClosed : H.flowPreservesSymplecticForm

def CanonicalHamiltonianFlowClosed (H : CanonicalHamiltonianFlow) : Prop :=
  H.legendreTransform ∧ H.canonicalEquations ∧ H.flowPreservesSymplecticForm

theorem canonical_hamiltonian_flow_closed_from_evidence
    (H : CanonicalHamiltonianFlow) (E : CanonicalHamiltonianFlowEvidence H) :
    CanonicalHamiltonianFlowClosed H := by
  exact And.intro E.legendreTransformClosed
    (And.intro E.canonicalEquationsClosed E.flowPreservesSymplecticFormClosed)

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse