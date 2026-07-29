import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u -> ℝ
  capitalAccumulation : Type u -> ℝ
  consumptionPath : Type u -> ℝ
  optimalGrowthPath : Prop
  intertemporalOptimality : Prop
  productionFunctionLawful : Prop
  capitalAccumulationLawful : Prop
  optimalGrowthPathClosed : optimalGrowthPath
  intertemporalOptimalityClosed : intertemporalOptimality

structure GrowthModelEvidence (G : GrowthModelPackage) where
  optimalGrowthPathClosed : G.optimalGrowthPath
  intertemporalOptimalityClosed : G.intertemporalOptimality

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.optimalGrowthPath ∧ G.intertemporalOptimality

theorem growth_model_closed_from_evidence (G : GrowthModelPackage)
    (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.optimalGrowthPathClosed E.intertemporalOptimalityClosed

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse