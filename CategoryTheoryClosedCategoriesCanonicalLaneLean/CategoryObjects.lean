namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure ClosedCategory where
  carrier : Type
  categoryStructure : Prop
  monoidalStructure : Prop
  closedStructure : Prop

structure CategoryTheoreticObject where
  cat : ClosedCategory
  exponentialsExist : Prop
  tensorHomAdjunction : Prop
  yonedaFullFaithful : Prop
  conclusion : exponentialsExist ∧ tensorHomAdjunction ∧ yonedaFullFaithful

def CategoryWitnessClosed (O : CategoryTheoreticObject) : Prop :=
  O.conclusion

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse