import DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure YonedaLemmaPackage (A : AdmissibleObject) where
  yonedaEmbeddingFull : Prop
  yonedaEmbeddingFaithful : Prop
  yonedaEmbeddingPreservesLimits : Prop
  yonedaEmbeddingPreservesColimits : Prop

structure YonedaEvidence (A : AdmissibleObject) (Y : YonedaLemmaPackage A) where
  fullClosed : Y.yonedaEmbeddingFull
  faithfulClosed : Y.yonedaEmbeddingFaithful
  limitsClosed : Y.yonedaEmbeddingPreservesLimits
  colimitsClosed : Y.yonedaEmbeddingPreservesColimits

def YonedaClosed (A : AdmissibleObject) (Y : YonedaLemmaPackage A) : Prop :=
  Y.yonedaEmbeddingFull ∧ Y.yonedaEmbeddingFaithful ∧
  Y.yonedaEmbeddingPreservesLimits ∧ Y.yonedaEmbeddingPreservesColimits

theorem yoneda_closed_from_evidence (A : AdmissibleObject) (Y : YonedaLemmaPackage A) (E : YonedaEvidence A Y) : YonedaClosed A Y := by
  exact And.intro E.fullClosed (And.intro E.faithfulClosed (And.intro E.limitsClosed E.colimitsClosed))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse