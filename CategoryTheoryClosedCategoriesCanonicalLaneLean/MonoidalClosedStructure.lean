import CategoryTheoryClosedCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure MonoidalClosedPackage where
  category : Type u
  monoidalProduct : Type v
  internalHom : Type w
  tensorUnit : Type x
  associatorLawful : Prop
  unitLawful : Prop
  tensorHomAdjunctionExists : Prop
  evaluationMorphism : Prop
  coevaluationMorphism : Prop

structure MonoidalClosedEvidence (M : MonoidalClosedPackage) where
  associatorLawfulClosed : M.associatorLawful
  unitLawfulClosed : M.unitLawful
  tensorHomAdjunctionExistsClosed : M.tensorHomAdjunctionExists
  evaluationMorphismClosed : M.evaluationMorphism
  coevaluationMorphismClosed : M.coevaluationMorphism

def MonoidalClosedClosed (M : MonoidalClosedPackage) : Prop :=
  M.associatorLawful ∧ M.unitLawful ∧ M.tensorHomAdjunctionExists ∧
  M.evaluationMorphism ∧ M.coevaluationMorphism

theorem monoidal_closed_closed_from_evidence (M : MonoidalClosedPackage)
    (E : MonoidalClosedEvidence M) : MonoidalClosedClosed M := by
  exact And.intro E.associatorLawfulClosed
    (And.intro E.unitLawfulClosed
      (And.intro E.tensorHomAdjunctionExistsClosed
        (And.intro E.evaluationMorphismClosed E.coevaluationMorphismClosed)))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse