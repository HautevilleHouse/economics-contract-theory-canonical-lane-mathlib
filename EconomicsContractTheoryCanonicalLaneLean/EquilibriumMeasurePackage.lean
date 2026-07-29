import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure EquilibriumMeasurePackage where
  commoditySpace : Type u
  priceFunctional : Type v
  excessDemand : Type w
  walrasianEquilibrium : Prop
  paretoOptimality : Prop
  priceFunctionalLawful : Prop
  excessDemandLawful : Prop
  walrasianEquilibriumClosed : walrasianEquilibrium
  paretoOptimalityClosed : paretoOptimality

structure EquilibriumMeasureEvidence (P : EquilibriumMeasurePackage) where
  walrasianEquilibriumClosed : P.walrasianEquilibrium
  paretoOptimalityClosed : P.paretoOptimality

def EquilibriumMeasureClosed (P : EquilibriumMeasurePackage) : Prop :=
  P.walrasianEquilibrium ∧ P.paretoOptimality

theorem equilibrium_measure_closed_from_evidence (P : EquilibriumMeasurePackage)
    (E : EquilibriumMeasureEvidence P) : EquilibriumMeasureClosed P := by
  exact And.intro E.walrasianEquilibriumClosed E.paretoOptimalityClosed

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse