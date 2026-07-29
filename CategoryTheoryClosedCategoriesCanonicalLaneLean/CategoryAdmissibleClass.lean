import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure CategoryAdmittedObject where
  category : Type u
  hasInternalHoms : Prop
  hasLimits : Prop
  hasColimits : Prop
  yonedaEmbedding : Prop
  conclusion : hasInternalHoms ∧ hasLimits ∧ hasColimits ∧ yonedaEmbedding

structure AdmissibleClass where
  object : CategoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.hasInternalHoms ∧ A.object.hasLimits ∧ A.object.hasColimits ∧ A.object.yonedaEmbedding) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse