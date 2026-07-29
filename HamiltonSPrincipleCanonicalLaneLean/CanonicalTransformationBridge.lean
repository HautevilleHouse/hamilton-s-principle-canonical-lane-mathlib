import HamiltonSPrincipleCanonicalLaneLean.ActionFunctionalVariation

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure CanonicalTransformation (M : Type*) [TopologicalSpace M] {S : SymplecticManifold M}
    (P : PhaseSpacePackage M S) where
  generatingFunction : Type
  preservesPoissonBracket : Prop
  preservesAction : Prop
  hamiltonianInvariant : Prop
  preservesPoissonBracketProof : preservesPoissonBracket
  preservesActionProof : preservesAction
  hamiltonianInvariantProof : hamiltonianInvariant

structure TransformationEvidence {M : Type*} [TopologicalSpace M] {S : SymplecticManifold M}
    {P : PhaseSpacePackage M S} (T : CanonicalTransformation M S P) where
  poissonClosed : T.preservesPoissonBracket
  actionClosed : T.preservesAction
  hamiltonianClosed : T.hamiltonianInvariant

def TransformationClosed {M : Type*} [TopologicalSpace M] {S : SymplecticManifold M}
    {P : PhaseSpacePackage M S} (T : CanonicalTransformation M S P) : Prop :=
  T.preservesPoissonBracket ∧ T.preservesAction ∧ T.hamiltonianInvariant

theorem transformation_closed_from_evidence {M : Type*} [TopologicalSpace M]
    {S : SymplecticManifold M} {P : PhaseSpacePackage M S} (T : CanonicalTransformation M S P)
    (E : TransformationEvidence T) : TransformationClosed T := by
  exact And.intro E.poissonClosed (And.intro E.actionClosed E.hamiltonianClosed)

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse