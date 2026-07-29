import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure ClosedCategoryAdmittedObject where
  carrier : Type u
  internalHom : carrier -> carrier -> carrier
  evaluationMap : {
    homObjTy : Type u;
    source : carrier;
    target : carrier;
  } -> carrier
  abstractStructureAdmitted : Prop
  internalHomUniversal : {
    X Y Z : carrier;
  } (f : X -> Y -> Z) -> { g : X -> internalHom Y Z } -> 
    (forall a b, f a b = evaluationMap (source := Y, target := Z) (g a) b)
  adjunctionData : Prop

structure ClosedCategoryAdmissibleClass where
  object : ClosedCategoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ClosedCategoryAdmissibleClass) : Prop :=
  (A.object.internalHomUniversal) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse