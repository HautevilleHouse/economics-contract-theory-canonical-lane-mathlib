import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure ArrowDebreuCommoditySpace where
  commodityTypes : Type u
  priceSystem : commodityTypes → ℝ
  endowments : commodityTypes → ℝ
  preferences : Type v
  rationality : Prop
  rationalityTerm : rationality

structure ArrowDebreuEquilibriumPackage (C : ArrowDebreuCommoditySpace) where
  marketClearingPrices : Prop
  individualOptimality : Prop
  equilibriumExists : Prop
  uniquenessGuarantee : Prop

structure ArrowDebreuEquilibriumEvidence {C : ArrowDebreuCommoditySpace}
  (E : ArrowDebreuEquilibriumPackage C) where
  marketClearingPricesClosed : E.marketClearingPrices
  individualOptimalityClosed : E.individualOptimality
  equilibriumExistsClosed : E.equilibriumExists
  uniquenessGuaranteeClosed : E.uniquenessGuarantee

def ArrowDebreuEquilibriumClosed {C : ArrowDebreuCommoditySpace}
  (E : ArrowDebreuEquilibriumPackage C) : Prop :=
  E.marketClearingPrices ∧ E.individualOptimality ∧
  E.equilibriumExists ∧ E.uniquenessGuarantee

theorem arrow_debreu_equilibrium_closed_from_evidence
  {C : ArrowDebreuCommoditySpace} (E : ArrowDebreuEquilibriumPackage C)
  (ev : ArrowDebreuEquilibriumEvidence E) : ArrowDebreuEquilibriumClosed E :=
  And.intro ev.marketClearingPricesClosed
    (And.intro ev.individualOptimalityClosed
      (And.intro ev.equilibriumExistsClosed ev.uniquenessGuaranteeClosed))

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse