import CategoryTheoryClosedCategoriesCanonicalLaneLean.CategoryAdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure YonedaLemmaPackage (A : AdmissibleClass) where
  yonedaEmbeddingFullFaithful : Prop
  yonedaEmbeddingPreservesLimits : Prop
  yonedaEmbeddingPreservesColimits : Prop
  yonedaEmbeddingClosed : A.object.yonedaEmbedding

def YonedaLemmaClosed (A : AdmissibleClass) : Prop :=
  A.object.yonedaEmbedding

theorem yoneda_lemma_closed_from_package (A : AdmissibleClass) (Y : YonedaLemmaPackage A) : YonedaLemmaClosed A :=
  Y.yonedaEmbeddingClosed

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse