import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure YonedaBundle where
  embeddingDefined : Prop
  fullyFaithful : Prop
  naturalIsomorphism : Prop
  yonedaLemmaProved : Prop

structure YonedaEvidence (Y : YonedaBundle) where
  embeddingDefinedClosed : Y.embeddingDefined
  fullyFaithfulClosed : Y.fullyFaithful
  naturalIsomorphismClosed : Y.naturalIsomorphism
  yonedaLemmaProvedClosed : Y.yonedaLemmaProved

def YonedaClosed (Y : YonedaBundle) : Prop :=
  Y.embeddingDefined ∧ Y.fullyFaithful ∧ Y.naturalIsomorphism ∧ Y.yonedaLemmaProved

theorem yoneda_closed_from_evidence (Y : YonedaBundle) (E : YonedaEvidence Y) :
    YonedaClosed Y := by
  exact And.intro E.embeddingDefinedClosed
    (And.intro E.fullyFaithfulClosed
      (And.intro E.naturalIsomorphismClosed E.yonedaLemmaProvedClosed))

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse