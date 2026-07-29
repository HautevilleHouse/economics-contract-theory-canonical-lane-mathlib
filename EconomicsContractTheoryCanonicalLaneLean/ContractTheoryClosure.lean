import EconomicsContractTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure ContractTheoryClosure where
  preferencesClosed : Prop
  equilibriumClosed : Prop
  bridgeClosedProp : Prop
  gateClosedProp : Prop

theorem contract_theory_closure (A : AdmissibleClass) : ContractTheoryClosure := by
  refine {
    preferencesClosed := by
      exact bridge_from_admissible_class A
    equilibriumClosed := by
      exact gate_from_admissible_class A
    bridgeClosedProp := bridgeClosed A
    gateClosedProp := gateClosed A
  }

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse