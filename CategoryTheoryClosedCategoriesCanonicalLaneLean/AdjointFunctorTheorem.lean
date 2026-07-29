import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure AdjunctionPackage where
  functorF : Type u → Type v
  functorG : Type u → Type v
  naturalBijection : Prop
  unitCounit : Prop
  triangleIdentities : Prop
  adjointFunctorTheorem : Prop

structure AdjunctionEvidence (A : AdjunctionPackage) where
  naturalBijectionClosed : A.naturalBijection
  unitCounitClosed : A.unitCounit
  triangleIdentitiesClosed : A.triangleIdentities
  adjointFunctorTheoremClosed : A.adjointFunctorTheorem

def AdjunctionClosed (A : AdjunctionPackage) : Prop :=
  A.naturalBijection ∧ A.unitCounit ∧ A.triangleIdentities ∧ A.adjointFunctorTheorem

theorem adjunction_closed_from_evidence (A : AdjunctionPackage) (E : AdjunctionEvidence A) :
    AdjunctionClosed A := by
  exact And.intro E.naturalBijectionClosed (And.intro E.unitCounitClosed (And.intro E.triangleIdentitiesClosed E.adjointFunctorTheoremClosed))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse
