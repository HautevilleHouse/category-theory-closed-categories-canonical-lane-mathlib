import CategoryTheoryClosedCategoriesCanonicalLaneLean.MonoidalClosedStructure

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure ExponentialPackage {M : MonoidalClosedPackage} where
  objectA : Type
  objectB : Type
  exponentialObject : Type
  evaluationMap : Type
  universalProperty : Prop
  naturalityInA : Prop
  naturalityInB : Prop

structure ExponentialEvidence {M : MonoidalClosedPackage}
    (E : ExponentialPackage M) where
  universalPropertyClosed : E.universalProperty
  naturalityInAClosed : E.naturalityInA
  naturalityInBClosed : E.naturalityInB

def ExponentialClosed {M : MonoidalClosedPackage}
    (E : ExponentialPackage M) : Prop :=
  E.universalProperty ∧ E.naturalityInA ∧ E.naturalityInB

theorem exponential_closed_from_evidence {M : MonoidalClosedPackage}
    (E : ExponentialPackage M) (Ev : ExponentialEvidence E) :
    ExponentialClosed E := by
  exact And.intro Ev.universalPropertyClosed
    (And.intro Ev.naturalityInAClosed Ev.naturalityInBClosed)

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse