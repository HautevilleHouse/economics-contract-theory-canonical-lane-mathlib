import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u
  capitalStock : Type v
  consumption : Type w
  savingsRate : ℝ
  laborSupply : Type x
  technologicalProgress : ℝ
  steadyState : Prop
  convergenceRate : Prop
  optimalGrowth : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  steadyStateClosed : G.steadyState
  convergenceRateClosed : G.convergenceRate
  optimalGrowthClosed : G.optimalGrowth

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.steadyState ∧ G.convergenceRate ∧ G.optimalGrowth

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.steadyStateClosed
    (And.intro E.convergenceRateClosed E.optimalGrowthClosed)

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse