import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure UtilityRepresentationPackage where
  preferenceRelation : Type u -> Type u
  utilityFunction : Type u -> ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  utilityRepresentation : Prop
  completenessClosed : completeness
  transitivityClosed : transitivity
  continuityClosed : continuity
  utilityRepresentationClosed : utilityRepresentation

structure UtilityRepresentationEvidence (U : UtilityRepresentationPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  utilityRepresentationClosed : U.utilityRepresentation

def UtilityRepresentationClosed (U : UtilityRepresentationPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.utilityRepresentation

theorem utility_representation_closed_from_evidence (U : UtilityRepresentationPackage)
    (E : UtilityRepresentationEvidence U) : UtilityRepresentationClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed
    (And.intro E.continuityClosed E.utilityRepresentationClosed))

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse