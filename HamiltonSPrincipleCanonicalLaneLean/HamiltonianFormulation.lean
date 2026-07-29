import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure HamiltonianPackage {H : HamiltonPrinciplePackage} {L : LagrangianPackage H} (E : EulerLagrangePackage L) where
  hamiltonianFunction : Type u
  phaseSpace : Type v
  canonicalEquations : Prop
  poissonBracket : Prop

structure HamiltonianEvidence {H : HamiltonPrinciplePackage} {L : LagrangianPackage H} {E : EulerLagrangePackage L}
    (Hm : HamiltonianPackage E) where
  hamiltonianFunctionClosed : Hm.hamiltonianFunction
  phaseSpaceClosed : Hm.phaseSpace
  canonicalEquationsClosed : Hm.canonicalEquations
  poissonBracketClosed : Hm.poissonBracket

def HamiltonianClosed {H : HamiltonPrinciplePackage} {L : LagrangianPackage H} {E : EulerLagrangePackage L}
    (Hm : HamiltonianPackage E) : Prop := Hm.hamiltonianFunction ∧ Hm.phaseSpace ∧ Hm.canonicalEquations ∧ Hm.poissonBracket

theorem hamiltonian_closed_from_evidence {H : HamiltonPrinciplePackage} {L : LagrangianPackage H} {E : EulerLagrangePackage L}
    (Hm : HamiltonianPackage E) (Ev : HamiltonianEvidence Hm) : HamiltonianClosed Hm := by
  exact And.intro Ev.hamiltonianFunctionClosed
    (And.intro Ev.phaseSpaceClosed
      (And.intro Ev.canonicalEquationsClosed Ev.poissonBracketClosed))

end HautevilleHouse
end HamiltonSPrincipleCanonicalLaneLean
