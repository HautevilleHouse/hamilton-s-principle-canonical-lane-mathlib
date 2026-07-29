import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure LagrangianPackage (H : HamiltonPrinciplePackage) where
  configurationSpace : Type u
  velocityPhaseSpace : Type v
  lagrangianFunction : Type w
  kineticEnergy : Prop
  potentialEnergy : Prop

structure LagrangianEvidence {H : HamiltonPrinciplePackage} (L : LagrangianPackage H) where
  configurationSpaceClosed : L.configurationSpace
  velocityPhaseSpaceClosed : L.velocityPhaseSpace
  lagrangianFunctionClosed : L.lagrangianFunction
  kineticEnergyClosed : L.kineticEnergy
  potentialEnergyClosed : L.potentialEnergy

def LagrangianClosed {H : HamiltonPrinciplePackage} (L : LagrangianPackage H) : Prop :=
  L.configurationSpace ∧ L.velocityPhaseSpace ∧ L.lagrangianFunction ∧ L.kineticEnergy ∧ L.potentialEnergy

theorem lagrangian_closed_from_evidence {H : HamiltonPrinciplePackage} (L : LagrangianPackage H) (E : LagrangianEvidence L) :
    LagrangianClosed L := by
  exact And.intro E.configurationSpaceClosed
    (And.intro E.velocityPhaseSpaceClosed
      (And.intro E.lagrangianFunctionClosed
        (And.intro E.kineticEnergyClosed E.potentialEnergyClosed)))

end HautevilleHouse
end HamiltonSPrincipleCanonicalLaneLean
