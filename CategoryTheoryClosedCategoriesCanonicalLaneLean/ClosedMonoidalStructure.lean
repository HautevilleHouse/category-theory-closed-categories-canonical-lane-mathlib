import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure ClosedMonoidalCategory where
  tensorProduct : Type u → Type u → Type u
  internalHom : Type u → Type u → Type u
  tensorUnit : Type u
  associatorNatural : Prop
  leftUnitorNatural : Prop
  rightUnitorNatural : Prop
  tensorHomAdjunction : Prop
  associatorNaturalTerm : associatorNatural
  leftUnitorNaturalTerm : leftUnitorNatural
  rightUnitorNaturalTerm : rightUnitorNatural
  tensorHomAdjunctionTerm : tensorHomAdjunction

def ClosedMonoidalClosed (C : ClosedMonoidalCategory) : Prop :=
  C.associatorNatural ∧ C.leftUnitorNatural ∧ C.rightUnitorNatural ∧ C.tensorHomAdjunction

theorem closed_monoidal_closed (C : ClosedMonoidalCategory) : ClosedMonoidalClosed C := by
  exact And.intro C.associatorNaturalTerm
    (And.intro C.leftUnitorNaturalTerm
      (And.intro C.rightUnitorNaturalTerm C.tensorHomAdjunctionTerm))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse
