import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure AssetPricingPackage where
  assetSpace : Type u
  stateSpace : Type v
  payoffFunction : assetSpace → stateSpace → ℝ
  discountFactor : ℝ
  stochasticDiscountFactor : ℝ
  priceFunctional : assetSpace → ℝ
  noArbitrage : Prop
  completeness : Prop
  riskNeutralProbabilities : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageClosed : A.noArbitrage
  completenessClosed : A.completeness
  riskNeutralProbabilitiesClosed : A.riskNeutralProbabilities

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrage ∧ A.completeness ∧ A.riskNeutralProbabilities

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.noArbitrageClosed
    (And.intro E.completenessClosed E.riskNeutralProbabilitiesClosed)

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse