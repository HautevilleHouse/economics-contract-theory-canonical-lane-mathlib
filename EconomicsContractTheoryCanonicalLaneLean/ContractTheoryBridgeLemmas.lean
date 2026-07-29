import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsContractTheoryCanonicalLaneLean.PrincipalAgentEquilibrium

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.gateWitness

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse
