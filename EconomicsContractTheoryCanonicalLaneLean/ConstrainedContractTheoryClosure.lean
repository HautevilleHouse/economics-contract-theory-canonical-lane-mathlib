import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsContractTheoryCanonicalLaneLean.ContractTheoryBridgeLemmas
import HautevilleHouse.EconomicsContractTheoryCanonicalLaneLean.ContractTheoryGateLemmas

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

def ConstrainedContractTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_contract_theory_endgame (A : AdmissibleClass) : ConstrainedContractTheoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse
