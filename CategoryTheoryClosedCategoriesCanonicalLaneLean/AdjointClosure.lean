import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure AdjunctionPackage (A : AdmissibleClass) where
  leftAdjoint : A.object.carrier → A.object.carrier
  rightAdjoint : A.object.carrier → A.object.carrier
  unit : ∀ X : A.object.carrier, Hom X (rightAdjoint (leftAdjoint X))
  counit : ∀ X : A.object.carrier, Hom (leftAdjoint (rightAdjoint X)) X
  triangleIdentities : ∀ X : A.object.carrier, (counit (leftAdjoint X)) ∘ (leftAdjoint (unit X)) = id (leftAdjoint X) ∧
    (rightAdjoint (counit X)) ∘ (unit (rightAdjoint X)) = id (rightAdjoint X)
  triangleIdentitiesClosed : triangleIdentities

structure AdjunctionEvidence (A : AdmissibleClass) (Adj : AdjunctionPackage A) where
  triangleIdentitiesClosed : Adj.triangleIdentities

def AdjunctionClosed (A : AdmissibleClass) (Adj : AdjunctionPackage A) : Prop :=
  Adj.triangleIdentities

theorem adjunction_closed_from_evidence (A : AdmissibleClass) (Adj : AdjunctionPackage A)
    (E : AdjunctionEvidence A Adj) : AdjunctionClosed A Adj := by
  exact E.triangleIdentitiesClosed

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse