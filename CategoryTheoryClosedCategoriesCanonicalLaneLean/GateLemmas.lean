import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

def gateClosed (A : ClosedCategoryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ClosedCategoryAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse