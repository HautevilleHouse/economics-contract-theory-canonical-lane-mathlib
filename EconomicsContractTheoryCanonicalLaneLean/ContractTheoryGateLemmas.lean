import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsContractTheoryCanonicalLaneLean.RevelationPrinciple

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse
