import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure AdmittedObject where
  theorem : String
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse