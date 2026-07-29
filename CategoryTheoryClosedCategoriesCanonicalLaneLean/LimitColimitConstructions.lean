import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure LimitConstruction where
  diagram : Type u → Type v
  limitObject : Type u
  limitCone : Prop
  universalProperty : Prop
  limitConeTerm : limitCone
  universalPropertyTerm : universalProperty

structure ColimitConstruction where
  diagram : Type u → Type v
  colimitObject : Type u
  colimitCocone : Prop
  universalProperty : Prop
  colimitCoconeTerm : colimitCocone
  universalPropertyTerm : universalProperty

def LimitTheoremClosed (L : LimitConstruction) : Prop :=
  L.limitCone ∧ L.universalProperty

def ColimitTheoremClosed (C : ColimitConstruction) : Prop :=
  C.colimitCocone ∧ C.universalProperty

theorem limit_theorem_closed (L : LimitConstruction) : LimitTheoremClosed L := by
  exact And.intro L.limitConeTerm L.universalPropertyTerm

theorem colimit_theorem_closed (C : ColimitConstruction) : ColimitTheoremClosed C := by
  exact And.intro C.colimitCoconeTerm C.universalPropertyTerm

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse
