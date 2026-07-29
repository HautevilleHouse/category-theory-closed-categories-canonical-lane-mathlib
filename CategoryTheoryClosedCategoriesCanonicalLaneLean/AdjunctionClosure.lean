import CategoryTheoryClosedCategoriesCanonicalLaneLean.CategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure AdjunctionClosurePackage (A : AdmissibleClass) where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitCounitSatisfied : Prop
  adjunctionClosed : A.object.hasLimits ∧ A.object.hasColimits

def AdjunctionClosureClosed (A : AdmissibleClass) : Prop :=
  A.object.hasLimits ∧ A.object.hasColimits

theorem adjunction_closure_closed_from_package (A : AdmissibleClass) (J : AdjunctionClosurePackage A) : AdjunctionClosureClosed A :=
  J.adjunctionClosed

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse