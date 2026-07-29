import CategoryTheoryClosedCategoriesCanonicalLaneLean.CategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure LimitsColimitsClosurePackage (A : AdmissibleClass) where
  limitsExist : Prop
  colimitsExist : Prop
  limitPreservingFunctors : Prop
  colimitPreservingFunctors : Prop
  limitsClosed : A.object.hasLimits
  colimitsClosed : A.object.hasColimits

def LimitsColimitsClosureClosed (A : AdmissibleClass) : Prop :=
  A.object.hasLimits ∧ A.object.hasColimits

theorem limits_colimits_closure_closed_from_package (A : AdmissibleClass) (L : LimitsColimitsClosurePackage A) : LimitsColimitsClosureClosed A :=
  And.intro L.limitsClosed L.colimitsClosed

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse