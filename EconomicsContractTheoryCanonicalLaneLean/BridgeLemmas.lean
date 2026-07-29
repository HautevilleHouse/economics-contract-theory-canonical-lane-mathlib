import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

open HautevilleHouse.EconomicsContractTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.gateWitness.elim (fun h => h) (fun _ => A.gateWitness.elim id (fun h => h))

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse