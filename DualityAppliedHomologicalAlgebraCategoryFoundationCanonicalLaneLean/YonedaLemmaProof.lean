import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure YonedaLemmaPackage where
  functor : Type u → Type v
  naturalIsomorphism : Prop
  embeddingFullFaithful : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalIsomorphismClosed : Y.naturalIsomorphism
  embeddingFullFaithfulClosed : Y.embeddingFullFaithful

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalIsomorphism ∧ Y.embeddingFullFaithful

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage)
    (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.naturalIsomorphismClosed E.embeddingFullFaithfulClosed

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse