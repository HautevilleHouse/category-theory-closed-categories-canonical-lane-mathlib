import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure ClosedMonoidalBundle where
  tensorProductDefined : Prop
  internalHomDefined : Prop
  tensorHomAdjunction : Prop
  monoidalCategoryAxioms : Prop

structure ClosedMonoidalEvidence (C : ClosedMonoidalBundle) where
  tensorProductDefinedClosed : C.tensorProductDefined
  internalHomDefinedClosed : C.internalHomDefined
  tensorHomAdjunctionClosed : C.tensorHomAdjunction
  monoidalCategoryAxiomsClosed : C.monoidalCategoryAxioms

def ClosedMonoidalClosed (C : ClosedMonoidalBundle) : Prop :=
  C.tensorProductDefined ∧ C.internalHomDefined ∧ C.tensorHomAdjunction ∧ C.monoidalCategoryAxioms

theorem closed_monoidal_closed_from_evidence (C : ClosedMonoidalBundle)
    (E : ClosedMonoidalEvidence C) : ClosedMonoidalClosed C := by
  exact And.intro E.tensorProductDefinedClosed
    (And.intro E.internalHomDefinedClosed
      (And.intro E.tensorHomAdjunctionClosed E.monoidalCategoryAxiomsClosed))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse