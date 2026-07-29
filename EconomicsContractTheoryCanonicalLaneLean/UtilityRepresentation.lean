import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  relation : X → X → Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop

structure UtilityRepresentationPackage {X : Type u}
  (P : PreferenceRelation X) where
  utilityFunction : X → ℝ
  representationProperty : Prop
  continuousRepresentation : Prop
  uniquenessUpToMonotonic : Prop

structure UtilityRepresentationEvidence {X : Type u}
  {P : PreferenceRelation X} (U : UtilityRepresentationPackage P) where
  representationPropertyClosed : U.representationProperty
  continuousRepresentationClosed : U.continuousRepresentation
  uniquenessUpToMonotonicClosed : U.uniquenessUpToMonotonic

def UtilityRepresentationClosed {X : Type u}
  {P : PreferenceRelation X} (U : UtilityRepresentationPackage P) : Prop :=
  U.representationProperty ∧ U.continuousRepresentation ∧
  U.uniquenessUpToMonotonic

theorem utility_representation_closed_from_evidence
  {X : Type u} {P : PreferenceRelation X}
  (U : UtilityRepresentationPackage P)
  (ev : UtilityRepresentationEvidence U) : UtilityRepresentationClosed U :=
  And.intro ev.representationPropertyClosed
    (And.intro ev.continuousRepresentationClosed ev.uniquenessUpToMonotonicClosed)

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse