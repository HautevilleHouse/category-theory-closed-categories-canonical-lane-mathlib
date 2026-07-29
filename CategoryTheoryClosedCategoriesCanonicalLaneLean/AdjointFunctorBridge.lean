import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure AdjointFunctorBundle where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop
  adjunctionEstablished : Prop

structure AdjointFunctorEvidence (B : AdjointFunctorBundle) where
  unitNaturalClosed : B.unitNatural
  counitNaturalClosed : B.counitNatural
  triangleIdentitiesClosed : B.triangleIdentities
  adjunctionEstablishedClosed : B.adjunctionEstablished

def AdjointFunctorClosed (B : AdjointFunctorBundle) : Prop :=
  B.unitNatural ∧ B.counitNatural ∧ B.triangleIdentities ∧ B.adjunctionEstablished

theorem adjoint_functor_closed_from_evidence (B : AdjointFunctorBundle)
    (E : AdjointFunctorEvidence B) : AdjointFunctorClosed B := by
  exact And.intro E.unitNaturalClosed
    (And.intro E.counitNaturalClosed
      (And.intro E.triangleIdentitiesClosed E.adjunctionEstablishedClosed))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse