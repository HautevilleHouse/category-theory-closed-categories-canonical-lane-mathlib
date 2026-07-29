import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure CategorySpace where
  carrier : Type u

structure CategoryAdmittedObject where
  category : CategorySpace
  closedMonoidalStructure : Prop
  internalHomExists : Prop
  evaluationMorphism : Prop
  compositionMorphism : Prop
  conclusion : closedMonoidalStructure ∧ internalHomExists ∧ evaluationMorphism ∧ compositionMorphism

structure CategoryEndgameState where
  object : CategoryAdmittedObject

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.closedMonoidalStructure ∧ O.internalHomExists ∧ O.evaluationMorphism ∧ O.compositionMorphism

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse
