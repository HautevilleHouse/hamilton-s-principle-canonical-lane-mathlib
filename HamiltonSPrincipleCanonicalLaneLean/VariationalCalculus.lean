import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure VariationalCalculusPackage where
  functionalSpace : Type u
  variation : Type v
  firstVariation : Prop
  stationarityCondition : Prop

structure VariationalCalculusEvidence (V : VariationalCalculusPackage) where
  firstVariationClosed : V.firstVariation
  stationarityConditionClosed : V.stationarityCondition

def VariationalCalculusClosed (V : VariationalCalculusPackage) : Prop :=
  V.firstVariation ∧ V.stationarityCondition

theorem variational_calculus_closed_from_evidence (V : VariationalCalculusPackage)
    (ev : VariationalCalculusEvidence V) : VariationalCalculusClosed V :=
  And.intro ev.firstVariationClosed ev.stationarityConditionClosed

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse