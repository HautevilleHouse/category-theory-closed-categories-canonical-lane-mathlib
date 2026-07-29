import CategoryTheoryClosedCategoriesCanonicalLaneLean.ExponentialObject

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure AdjunctionPackage {M : MonoidalClosedPackage} where
  leftAdjoint : Type
  rightAdjoint : Type
  unit : Type
  counit : Type
  triangleIdentities : Prop
  naturality : Prop

structure AdjunctionEvidence {M : MonoidalClosedPackage}
    (A : AdjunctionPackage M) where
  triangleIdentitiesClosed : A.triangleIdentities
  naturalityClosed : A.naturality

def AdjunctionClosed {M : MonoidalClosedPackage}
    (A : AdjunctionPackage M) : Prop :=
  A.triangleIdentities ∧ A.naturality

theorem adjunction_closed_from_evidence {M : MonoidalClosedPackage}
    (A : AdjunctionPackage M) (E : AdjunctionEvidence A) :
    AdjunctionClosed A := by
  exact And.intro E.triangleIdentitiesClosed E.naturalityClosed

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse