import HamiltonSPrincipleCanonicalLaneLean.PhaseSpaceSymplecticStructure

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure ActionFunctional (M : Type*) [TopologicalSpace M] {S : SymplecticManifold M}
    (P : PhaseSpacePackage M S) where
  lagrangian : Type
  actionIntegral : Type
  stationaryCondition : Prop
  eulerLagrangeEquations : Prop
  stationaryConditionProof : stationaryCondition
  eulerLagrangeEquationsProof : eulerLagrangeEquations

structure VariationalEvidence {M : Type*} [TopologicalSpace M] {S : SymplecticManifold M}
    {P : PhaseSpacePackage M S} (A : ActionFunctional M S P) where
  stationaryClosed : A.stationaryCondition
  eulerLagrangeClosed : A.eulerLagrangeEquations

def VariationalClosed {M : Type*} [TopologicalSpace M] {S : SymplecticManifold M}
    {P : PhaseSpacePackage M S} (A : ActionFunctional M S P) : Prop :=
  A.stationaryCondition ∧ A.eulerLagrangeEquations

theorem variational_closed_from_evidence {M : Type*} [TopologicalSpace M]
    {S : SymplecticManifold M} {P : PhaseSpacePackage M S} (A : ActionFunctional M S P)
    (E : VariationalEvidence A) : VariationalClosed A := by
  exact And.intro E.stationaryClosed E.eulerLagrangeClosed

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse