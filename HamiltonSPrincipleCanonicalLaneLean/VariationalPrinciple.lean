import HautevilleHouse.HamiltonSPrincipleCanonicalLaneLean.RiemannianCurvature

/-!
# Variational Principle Package
This module defines the Lagrangian and action functional structures for Hamilton's principle.
-/

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure LagrangianPackage (M : Type u) where
  coordinateManifold : Type u
  tangentBundle : Type v
  lagrangianFunction : tangentBundle → ℝ
  smoothness : Prop
  fiberDerivativeExists : Prop

structure VariationalPackage {M : Type u} (L : LagrangianPackage M) where
  actionFunctional : (ℝ → M) → ℝ
  firstVariation : Prop
  stationarityCondition : Prop
  eulerLagrangeEquations : Prop

structure VariationalEvidence {M : Type u} {L : LagrangianPackage M} (V : VariationalPackage L) where
  firstVariationClosed : V.firstVariation
  stationarityConditionClosed : V.stationarityCondition
  eulerLagrangeEquationsClosed : V.eulerLagrangeEquations

def VariationalClosed {M : Type u} {L : LagrangianPackage M} (V : VariationalPackage L) : Prop :=
  V.firstVariation ∧ V.stationarityCondition ∧ V.eulerLagrangeEquations

theorem variational_closed_from_evidence
    {M : Type u} {L : LagrangianPackage M} (V : VariationalPackage L)
    (E : VariationalEvidence V) : VariationalClosed V := by
  exact And.intro E.firstVariationClosed
    (And.intro E.stationarityConditionClosed E.eulerLagrangeEquationsClosed)

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse
