import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure AssetPricingPackage where
  stochasticDiscountFactor : Type u -> Type v
  assetPayoff : Type u -> Type w
  pricingEquation : Prop
  noArbitrage : Prop
  marketCompleteness : Prop
  pricingEquationClosed : pricingEquation
  noArbitrageClosed : noArbitrage
  marketCompletenessClosed : marketCompleteness

structure AssetPricingEvidence (A : AssetPricingPackage) where
  pricingEquationClosed : A.pricingEquation
  noArbitrageClosed : A.noArbitrage
  marketCompletenessClosed : A.marketCompleteness

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.pricingEquation ∧ A.noArbitrage ∧ A.marketCompleteness

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage)
    (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.pricingEquationClosed (And.intro E.noArbitrageClosed E.marketCompletenessClosed)

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse