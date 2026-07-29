import HamiltonSPrincipleCanonicalLaneLean.CanonicalTransformationBridge

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure HamiltonJacobiEquation (M : Type*) [TopologicalSpace M] {S : SymplecticManifold M}
    {P : PhaseSpacePackage M S} (T : CanonicalTransformation M S P) where
  principalFunction : Type
  hamiltonJacobiEquation : Prop
  solutionExists : Prop
  endpointState : Prop
  hamiltonJacobiEquationProof : hamiltonJacobiEquation
  solutionExistsProof : solutionExists
  endpointStateProof : endpointState

structure HamiltonJacobiEvidence {M : Type*} [TopologicalSpace M] {S : SymplecticManifold M}
    {P : PhaseSpacePackage M S} {T : CanonicalTransformation M S P}
    (HJ : HamiltonJacobiEquation M S P T) where
  equationClosed : HJ.hamiltonJacobiEquation
  solutionClosed : HJ.solutionExists
  endpointClosed : HJ.endpointState

def HamiltonJacobiClosed {M : Type*} [TopologicalSpace M] {S : SymplecticManifold M}
    {P : PhaseSpacePackage M S} {T : CanonicalTransformation M S P}
    (HJ : HamiltonJacobiEquation M S P T) : Prop :=
  HJ.hamiltonJacobiEquation ∧ HJ.solutionExists ∧ HJ.endpointState

theorem hamilton_jacobi_closed_from_evidence {M : Type*} [TopologicalSpace M]
    {S : SymplecticManifold M} {P : PhaseSpacePackage M S} {T : CanonicalTransformation M S P}
    (HJ : HamiltonJacobiEquation M S P T) (E : HamiltonJacobiEvidence HJ) :
    HamiltonJacobiClosed HJ := by
  exact And.intro E.equationClosed (And.intro E.solutionClosed E.endpointClosed)

theorem hamilton_jacobi_supplies_endpoint {M : Type*} [TopologicalSpace M]
    {S : SymplecticManifold M} {P : PhaseSpacePackage M S} {T : CanonicalTransformation M S P}
    (HJ : HamiltonJacobiEquation M S P T) : HJ.endpointState :=
  HJ.endpointStateProof

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse