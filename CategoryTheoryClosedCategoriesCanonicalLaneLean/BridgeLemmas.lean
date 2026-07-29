import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

def bridgeClosed (A : ClosedCategoryAdmissibleClass) : Prop :=
  A.object.internalHomUniversal

theorem bridge_from_admissible_class (A : ClosedCategoryAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.internalHomUniversal

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse