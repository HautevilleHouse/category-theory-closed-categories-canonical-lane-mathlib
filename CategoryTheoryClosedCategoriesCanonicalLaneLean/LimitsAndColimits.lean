import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure LimitsBundle where
  coneDefined : Prop
  limitExists : Prop
  limitUniversalProperty : Prop
  colimitDefined : Prop
  colimitExists : Prop
  colimitUniversalProperty : Prop

structure LimitsEvidence (L : LimitsBundle) where
  coneDefinedClosed : L.coneDefined
  limitExistsClosed : L.limitExists
  limitUniversalPropertyClosed : L.limitUniversalProperty
  colimitDefinedClosed : L.colimitDefined
  colimitExistsClosed : L.colimitExists
  colimitUniversalPropertyClosed : L.colimitUniversalProperty

def LimitsClosed (L : LimitsBundle) : Prop :=
  L.coneDefined ∧ L.limitExists ∧ L.limitUniversalProperty ∧
  L.colimitDefined ∧ L.colimitExists ∧ L.colimitUniversalProperty

theorem limits_closed_from_evidence (L : LimitsBundle) (E : LimitsEvidence L) :
    LimitsClosed L := by
  exact And.intro E.coneDefinedClosed
    (And.intro E.limitExistsClosed
      (And.intro E.limitUniversalPropertyClosed
        (And.intro E.colimitDefinedClosed
          (And.intro E.colimitExistsClosed E.colimitUniversalPropertyClosed))))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse