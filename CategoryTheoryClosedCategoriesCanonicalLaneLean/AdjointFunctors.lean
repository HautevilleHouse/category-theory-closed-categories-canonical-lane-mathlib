import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure AdjointFunctorPackage (A : AdmissibleClass) where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence {A : AdmissibleClass} (P : AdjointFunctorPackage A) where
  leftAdjointClosed : P.leftAdjointExists
  rightAdjointClosed : P.rightAdjointExists
  unitNaturalClosed : P.unitNatural
  counitNaturalClosed : P.counitNatural
  triangleIdentitiesClosed : P.triangleIdentities

def AdjointFunctorClosed {A : AdmissibleClass} (P : AdjointFunctorPackage A) : Prop :=
  P.leftAdjointExists ∧ P.rightAdjointExists ∧ P.unitNatural ∧ P.counitNatural ∧ P.triangleIdentities

theorem adjoint_functor_closed_from_evidence
    {A : AdmissibleClass} (P : AdjointFunctorPackage A) (E : AdjointFunctorEvidence P) :
    AdjointFunctorClosed P := by
  exact And.intro E.leftAdjointClosed
    (And.intro E.rightAdjointClosed
      (And.intro E.unitNaturalClosed
        (And.intro E.counitNaturalClosed E.triangleIdentitiesClosed)))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse