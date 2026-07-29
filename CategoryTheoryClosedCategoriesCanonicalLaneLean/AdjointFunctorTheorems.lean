import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure AdjointPair where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop
  unitNaturalTerm : unitNatural
  counitNaturalTerm : counitNatural
  triangleIdentitiesTerm : triangleIdentities

def AdjointTheoremsClosed (A : AdjointPair) : Prop :=
  A.unitNatural ∧ A.counitNatural ∧ A.triangleIdentities

theorem adjoint_theorems_closed (A : AdjointPair) : AdjointTheoremsClosed A := by
  exact And.intro A.unitNaturalTerm (And.intro A.counitNaturalTerm A.triangleIdentitiesTerm)

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse
