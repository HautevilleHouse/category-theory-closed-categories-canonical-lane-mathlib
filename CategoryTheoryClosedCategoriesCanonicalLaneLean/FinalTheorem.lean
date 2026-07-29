import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

def ConstrainedClosedCategoryClosure (A : ClosedCategoryAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_closed_category_endgame (A : ClosedCategoryAdmissibleClass) :
    ConstrainedClosedCategoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse