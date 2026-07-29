import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure EulerLagrangePackage where
  equationsDerived : Prop
  boundaryTermsVanished : Prop
  extremalIdentified : Prop

structure EulerLagrangeEvidence (E : EulerLagrangePackage) where
  equationsDerivedClosed : E.equationsDerived
  boundaryTermsVanishedClosed : E.boundaryTermsVanished
  extremalIdentifiedClosed : E.extremalIdentified

def EulerLagrangeClosed (E : EulerLagrangePackage) : Prop :=
  E.equationsDerived ∧ E.boundaryTermsVanished ∧ E.extremalIdentified

theorem euler_lagrange_closed_from_evidence (E : EulerLagrangePackage) (Ev : EulerLagrangeEvidence E) : EulerLagrangeClosed E := by
  exact And.intro Ev.equationsDerivedClosed (And.intro Ev.boundaryTermsVanishedClosed Ev.extremalIdentifiedClosed)

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse