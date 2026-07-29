import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure ContractSpace where
  principalType : Type u
  agentType : Type v
  actionSet : principalType → Set (agentType → Type w)
  outcomeSet : Type x
  utilityPrincipal : (principalType × outcomeSet) → ℝ
  utilityAgent : (agentType × outcomeSet) → ℝ

def contractSpaceValid (C : ContractSpace) : Prop :=
  Nonempty (C.principalType) ∧ Nonempty (C.agentType)

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse
