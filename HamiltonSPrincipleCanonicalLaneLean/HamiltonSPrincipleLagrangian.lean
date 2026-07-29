import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure LagrangianConfig (M : Type u) (T : Type v) where
  config : M -> T
  action : Prop
  stationaryCondition : Prop

structure LagrangianConfigEvidence (M : Type u) (T : Type v) (L : LagrangianConfig M T) where
  actionClosed : L.action
  stationaryConditionClosed : L.stationaryCondition

def LagrangianConfigClosed (M : Type u) (T : Type v) (L : LagrangianConfig M T) : Prop :=
  L.action ∧ L.stationaryCondition

theorem lagrangian_config_closed_from_evidence (M : Type u) (T : Type v) (L : LagrangianConfig M T) (E : LagrangianConfigEvidence M T L) : LagrangianConfigClosed M T L := by
  exact And.intro E.actionClosed E.stationaryConditionClosed

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse