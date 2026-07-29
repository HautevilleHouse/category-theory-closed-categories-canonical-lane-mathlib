import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure ClosedMonoidalCategoryPackage where
  monoidalStructure : Prop
  internalHom : Type u → Type v → Type w
  tensorHomAdjunction : Prop
  evaluationMap : Prop
  compositionMap : Prop
  closedStructure : Prop

structure ClosedMonoidalCategoryEvidence (C : ClosedMonoidalCategoryPackage) where
  monoidalStructureClosed : C.monoidalStructure
  internalHomClosed : ∀ A B : Type u, True
  tensorHomAdjunctionClosed : C.tensorHomAdjunction
  evaluationMapClosed : C.evaluationMap
  compositionMapClosed : C.compositionMap
  closedStructureClosed : C.closedStructure

def ClosedMonoidalCategoryClosed (C : ClosedMonoidalCategoryPackage) : Prop :=
  C.monoidalStructure ∧ C.tensorHomAdjunction ∧ C.evaluationMap ∧ C.compositionMap ∧ C.closedStructure

theorem closed_monoidal_category_closed_from_evidence (C : ClosedMonoidalCategoryPackage) (E : ClosedMonoidalCategoryEvidence C) :
    ClosedMonoidalCategoryClosed C := by
  exact And.intro E.monoidalStructureClosed (And.intro E.tensorHomAdjunctionClosed (And.intro E.evaluationMapClosed (And.intro E.compositionMapClosed E.closedStructureClosed)))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse
