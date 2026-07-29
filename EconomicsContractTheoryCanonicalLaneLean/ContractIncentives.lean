import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure ContractSpace where
  agents : Type u
  outcomes : Type v
  agentTypes : Type w
  typeDistribution : agentTypes → ℝ

structure ContractIncentivePackage (C : ContractSpace) where
  incentiveCompatibility : Prop
  individualRationality : Prop
  optimalContractExists : Prop
  monotonicityCondition : Prop

structure ContractIncentiveEvidence {C : ContractSpace}
  (P : ContractIncentivePackage C) where
  incentiveCompatibilityClosed : P.incentiveCompatibility
  individualRationalityClosed : P.individualRationality
  optimalContractExistsClosed : P.optimalContractExists
  monotonicityConditionClosed : P.monotonicityCondition

def ContractIncentiveClosed {C : ContractSpace}
  (P : ContractIncentivePackage C) : Prop :=
  P.incentiveCompatibility ∧ P.individualRationality ∧
  P.optimalContractExists ∧ P.monotonicityCondition

theorem contract_incentive_closed_from_evidence
  {C : ContractSpace} (P : ContractIncentivePackage C)
  (ev : ContractIncentiveEvidence P) : ContractIncentiveClosed P :=
  And.intro ev.incentiveCompatibilityClosed
    (And.intro ev.individualRationalityClosed
      (And.intro ev.optimalContractExistsClosed ev.monotonicityConditionClosed))

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse