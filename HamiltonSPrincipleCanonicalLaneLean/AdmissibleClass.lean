import HautevilleHouse.HamiltonSPrincipleCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace HamiltonSPrincipleCanonicalLaneLean

structure AdmissibleClass where
  object : HamiltonAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HamiltonWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HamiltonSPrincipleCanonicalLaneLean
end HautevilleHouse
