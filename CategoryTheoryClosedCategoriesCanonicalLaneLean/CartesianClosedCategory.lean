import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure CartesianClosedPackage (A : AdmissibleClass) where
  finiteProductsExist : Prop
  exponentialExists : Prop
  evaluationMapExists : Prop
  curryingMapExists : Prop

structure CartesianClosedEvidence {A : AdmissibleClass} (P : CartesianClosedPackage A) where
  finiteProductsExistClosed : P.finiteProductsExist
  exponentialExistsClosed : P.exponentialExists
  evaluationMapExistsClosed : P.evaluationMapExists
  curryingMapExistsClosed : P.curryingMapExists

def CartesianClosedClosed {A : AdmissibleClass} (P : CartesianClosedPackage A) : Prop :=
  P.finiteProductsExist ∧ P.exponentialExists ∧ P.evaluationMapExists ∧ P.curryingMapExists

theorem cartesian_closed_closed_from_evidence
    {A : AdmissibleClass} (P : CartesianClosedPackage A) (E : CartesianClosedEvidence P) :
    CartesianClosedClosed P := by
  exact And.intro E.finiteProductsExistClosed
    (And.intro E.exponentialExistsClosed
      (And.intro E.evaluationMapExistsClosed E.curryingMapExistsClosed))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse