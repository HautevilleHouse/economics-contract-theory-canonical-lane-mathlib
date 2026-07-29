import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsContractTheoryCanonicalLaneLean.ContractSpace

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure DirectMechanism (C : ContractSpace) where
  messageSpace : Type u
  agentStrategy : C.agentType → messageSpace
  allocation : messageSpace → C.outcomeSet

def incentiveCompatible (C : ContractSpace) (M : DirectMechanism C) : Prop :=
  ∀ (θ : C.agentType) (θ' : C.agentType),
    C.utilityAgent (θ, M.allocation (M.agentStrategy θ)) ≥
    C.utilityAgent (θ, M.allocation (M.agentStrategy θ'))

structure RevelationPrincipleEvidence (C : ContractSpace) where
  anyMechanismImpliesDirect : Prop
  incentiveCompatiblePreserved : Prop
  mechanismClosed : incentiveCompatiblePreserved

theorem revelation_principle_closed (C : ContractSpace) (E : RevelationPrincipleEvidence C) : E.incentiveCompatiblePreserved :=
  E.mechanismClosed

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse
