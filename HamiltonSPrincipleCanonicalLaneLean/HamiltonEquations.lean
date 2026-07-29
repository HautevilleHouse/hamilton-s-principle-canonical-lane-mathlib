import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure HamiltonEquationsPackage where
  phaseSpace : Type u
  hamiltonianFunction : phaseSpace → ℝ
  symplecticForm : Type v
  hamiltonEquations : Prop

structure HamiltonEquationsEvidence (H : HamiltonEquationsPackage) where
  hamiltonEquationsClosed : H.hamiltonEquations

def HamiltonEquationsClosed (H : HamiltonEquationsPackage) : Prop :=
  H.hamiltonEquations

theorem hamilton_equations_closed_from_evidence (H : HamiltonEquationsPackage)
    (ev : HamiltonEquationsEvidence H) : HamiltonEquationsClosed H :=
  ev.hamiltonEquationsClosed

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse