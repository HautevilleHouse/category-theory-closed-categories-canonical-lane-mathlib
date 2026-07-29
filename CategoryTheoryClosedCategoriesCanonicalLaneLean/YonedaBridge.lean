import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure YonedaBridgePackage (A : AdmissibleClass) where
  yonedaEmbedding : A.object.carrier → (A.object.carrier → Type u)
  yonedaFull : ∀ X Y : A.object.carrier, Function.Surjective (yonedaEmbedding X Y)
  yonedaFaithful : ∀ X Y : A.object.carrier, Function.Injective (yonedaEmbedding X Y)
  yonedaFullClosed : yonedaFull
  yonedaFaithfulClosed : yonedaFaithful

structure YonedaBridgeEvidence (A : AdmissibleClass) (Y : YonedaBridgePackage A) where
  yonedaFullClosed : Y.yonedaFull
  yonedaFaithfulClosed : Y.yonedaFaithful

def YonedaBridgeClosed (A : AdmissibleClass) (Y : YonedaBridgePackage A) : Prop :=
  Y.yonedaFull ∧ Y.yonedaFaithful

theorem yoneda_bridge_closed_from_evidence (A : AdmissibleClass) (Y : YonedaBridgePackage A)
    (E : YonedaBridgeEvidence A Y) : YonedaBridgeClosed A Y := by
  exact And.intro E.yonedaFullClosed E.yonedaFaithfulClosed

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse