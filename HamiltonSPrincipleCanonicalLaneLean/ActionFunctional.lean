import HamiltonSPrincipleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure ActionFunctional where
  configSpace : Type u
  lagrangian : (configSpace → ℝ) → ℝ
  action : (ℝ → configSpace) → ℝ
  functionalDerivative : Prop
  eulerLagrangeEquations : Prop
  stationarityPrinciple : Prop

structure ActionFunctionalEvidence (A : ActionFunctional) where
  functionalDerivativeClosed : A.functionalDerivative
  eulerLagrangeEquationsClosed : A.eulerLagrangeEquations
  stationarityPrincipleClosed : A.stationarityPrinciple

def ActionFunctionalClosed (A : ActionFunctional) : Prop :=
  A.functionalDerivative ∧ A.eulerLagrangeEquations ∧ A.stationarityPrinciple

theorem action_functional_closed_from_evidence (A : ActionFunctional)
    (E : ActionFunctionalEvidence A) : ActionFunctionalClosed A := by
  exact And.intro E.functionalDerivativeClosed
    (And.intro E.eulerLagrangeEquationsClosed E.stationarityPrincipleClosed)

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse