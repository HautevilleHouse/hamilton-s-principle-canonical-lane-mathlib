import HautevilleHouse.HamiltonSPrincipleCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HamiltonWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse
