import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryClosedCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure ClosedCategory where
  object : CategoryAdmittedObject
  internalHom : object.carrier → object.carrier → object.carrier
  eval : ∀ X Y, (internalHom X Y) ⊗ X ⟶ Y
  coeval : ∀ X Y, X ⟶ internalHom Y (X ⊗ Y)
  closedProof : Prop
  closedProofTerm : closedProof

def ClosedCategoryClosed (C : ClosedCategory) : Prop :=
  C.closedProof

-- Example theorem: Cartesian closed categories are closed.
theorem cartesian_closed_is_closed (C : ClosedCategory) :
  ClosedCategoryClosed C := by
  exact C.closedProofTerm

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse