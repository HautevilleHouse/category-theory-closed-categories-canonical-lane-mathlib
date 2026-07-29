import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure LimitsColimitsPackage where
  diagram : Type u → Type v
  limitExists : Prop
  colimitExists : Prop
  universalProperty : Prop
  limitUniqueness : Prop
  colimitUniqueness : Prop
  limitsColimitsTheorem : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  universalPropertyClosed : L.universalProperty
  limitUniquenessClosed : L.limitUniqueness
  colimitUniquenessClosed : L.colimitUniqueness
  limitsColimitsTheoremClosed : L.limitsColimitsTheorem

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.universalProperty ∧ L.limitUniqueness ∧ L.colimitUniqueness ∧ L.limitsColimitsTheorem

theorem limits_colimits_closed_from_evidence (L : LimitsColimitsPackage) (E : LimitsColimitsEvidence L) :
    LimitsColimitsClosed L := by
  exact And.intro E.limitExistsClosed (And.intro E.colimitExistsClosed (And.intro E.universalPropertyClosed (And.intro E.limitUniquenessClosed (And.intro E.colimitUniquenessClosed E.limitsColimitsTheoremClosed))))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse
