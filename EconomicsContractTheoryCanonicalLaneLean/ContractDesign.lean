import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure ContractDesignPackage where
  agentTypeSpace : Type u
  actionSpace : Type v
  outputSpace : Type w
  utilityFunction : agentTypeSpace → actionSpace → outputSpace → ℝ
  contractSpace : Type x
  incentiveCompatibility : Prop
  participationConstraint : Prop
  implementableAction : Prop

structure ContractDesignEvidence (C : ContractDesignPackage) where
  incentiveCompatibilityClosed : C.incentiveCompatibility
  participationConstraintClosed : C.participationConstraint
  implementableActionClosed : C.implementableAction

def ContractDesignClosed (C : ContractDesignPackage) : Prop :=
  C.incentiveCompatibility ∧ C.participationConstraint ∧ C.implementableAction

theorem contract_design_closed_from_evidence (C : ContractDesignPackage) (E : ContractDesignEvidence C) :
    ContractDesignClosed C := by
  exact And.intro E.incentiveCompatibilityClosed
    (And.intro E.participationConstraintClosed E.implementableActionClosed)

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse