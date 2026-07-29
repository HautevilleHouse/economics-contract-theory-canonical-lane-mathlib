import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsContractTheoryCanonicalLaneLean

structure SocialChoicePackage where
  preferenceProfile : Type u -> Type v
  socialWelfareFunctional : Type v -> Type w
  arrowConditions : Prop
  nondictatorship : Prop
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  arrowConditionsClosed : arrowConditions
  nondictatorshipClosed : nondictatorship
  paretoEfficiencyClosed : paretoEfficiency
  independenceOfIrrelevantAlternativesClosed : independenceOfIrrelevantAlternatives

structure SocialChoiceEvidence (S : SocialChoicePackage) where
  arrowConditionsClosed : S.arrowConditions
  nondictatorshipClosed : S.nondictatorship
  paretoEfficiencyClosed : S.paretoEfficiency
  independenceOfIrrelevantAlternativesClosed : S.independenceOfIrrelevantAlternatives

def SocialChoiceClosed (S : SocialChoicePackage) : Prop :=
  S.arrowConditions ∧ S.nondictatorship ∧ S.paretoEfficiency ∧ S.independenceOfIrrelevantAlternatives

theorem social_choice_closed_from_evidence (S : SocialChoicePackage)
    (E : SocialChoiceEvidence S) : SocialChoiceClosed S := by
  exact And.intro E.arrowConditionsClosed (And.intro E.nondictatorshipClosed
    (And.intro E.paretoEfficiencyClosed E.independenceOfIrrelevantAlternativesClosed))

end EconomicsContractTheoryCanonicalLaneLean
end HautevilleHouse