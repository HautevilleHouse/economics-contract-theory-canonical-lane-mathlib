import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure UtilityPreferencesPackage where
  preferenceRelation : Type u
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  monotonicity : Prop
  convexity : Prop

structure UtilityPreferencesEvidence (P : UtilityPreferencesPackage) where
  completenessClosed : P.completeness
  transitivityClosed : P.transitivity
  continuityClosed : P.continuity
  monotonicityClosed : P.monotonicity
  convexityClosed : P.convexity

def UtilityPreferencesClosed (P : UtilityPreferencesPackage) : Prop :=
  P.completeness ∧ P.transitivity ∧ P.continuity ∧ P.monotonicity ∧ P.convexity

theorem utility_preferences_closed_from_evidence (P : UtilityPreferencesPackage) (E : UtilityPreferencesEvidence P) :
    UtilityPreferencesClosed P := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed
        (And.intro E.monotonicityClosed E.convexityClosed)))

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse