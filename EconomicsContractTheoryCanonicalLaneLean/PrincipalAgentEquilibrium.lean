import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsContractTheoryCanonicalLaneLean.ContractSpace

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure PrincipalAgentEquilibrium (C : ContractSpace) where
  contract : C.principalType → (C.agentType → ℝ)
  actionChoice : C.agentType → (C.principalType → C.outcomeSet)
  participationConstraint : Prop
  incentiveConstraint : Prop
  optimalityPrincipal : Prop

def equilibriumValid (E : PrincipalAgentEquilibrium C) : Prop :=
  E.participationConstraint ∧ E.incentiveConstraint ∧ E.optimalityPrincipal

structure EquilibriumEvidence (E : PrincipalAgentEquilibrium C) where
  participationClosed : E.participationConstraint
  incentiveClosed : E.incentiveConstraint
  optimalityClosed : E.optimalityPrincipal
  equilibriumClosed : equilibriumValid E

theorem equilibrium_from_evidence (E : PrincipalAgentEquilibrium C) (Ev : EquilibriumEvidence E) : equilibriumValid E :=
  And.intro Ev.participationClosed (And.intro Ev.incentiveClosed Ev.optimalityClosed)

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse
