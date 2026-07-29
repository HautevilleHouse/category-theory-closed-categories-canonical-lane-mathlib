import HautevilleHouse.CategoryTheoryClosedCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure MonoidalCategoryData (C : Type u) [Category C] where
  tensorProduct : C → C → C
  unitObject : C
  associator : ∀ (X Y Z : C), (tensorProduct (tensorProduct X Y) Z) ≅ (tensorProduct X (tensorProduct Y Z))
  leftUnitor : ∀ (X : C), (tensorProduct unitObject X) ≅ X
  rightUnitor : ∀ (X : C), (tensorProduct X unitObject) ≅ X
  pentagonCondition : ∀ (W X Y Z : C), True → Prop
  triangleCondition : ∀ (X Y : C), True → Prop

structure MonoidalCategoryPackage (C : Type u) [Category C] where
  data : MonoidalCategoryData C
  pentagonHolds : ∀ (W X Y Z : C), pentagonCondition W X Y Z (by trivial)
  triangleHolds : ∀ (X Y : C), triangleCondition X Y (by trivial)

structure MonoidalCategoryEvidence {C : Type u} [Category C] (P : MonoidalCategoryPackage C) where
  pentagonClosed : ∀ (W X Y Z : C), P.pentagonHolds W X Y Z
  triangleClosed : ∀ (X Y : C), P.triangleHolds X Y

def MonoidalCategoryClosed {C : Type u} [Category C] (P : MonoidalCategoryPackage C) : Prop :=
  ∀ (W X Y Z : C), P.pentagonHolds W X Y Z ∧ ∀ (X Y : C), P.triangleHolds X Y

theorem monoidal_category_closed_from_evidence {C : Type u} [Category C] (P : MonoidalCategoryPackage C)
    (E : MonoidalCategoryEvidence P) : MonoidalCategoryClosed P := by
  intro W X Y Z
  exact And.intro (E.pentagonClosed W X Y Z) (fun X Y => E.triangleClosed X Y)

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse