import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure HomologicalAlgebraPackage where
  chainComplexes : Type u
  homologyFunctor : Type v
  exactSequences : Prop
  snakeLemma : Prop
  longExactSequence : Prop

structure HomologicalAlgebraEvidence (H : HomologicalAlgebraPackage) where
  exactSequencesClosed : H.exactSequences
  snakeLemmaClosed : H.snakeLemma
  longExactSequenceClosed : H.longExactSequence

def HomologicalAlgebraClosed (H : HomologicalAlgebraPackage) : Prop :=
  H.exactSequences ∧ H.snakeLemma ∧ H.longExactSequence

theorem homological_algebra_closed_from_evidence (H : HomologicalAlgebraPackage) (E : HomologicalAlgebraEvidence H) :
    HomologicalAlgebraClosed H := by
  exact And.intro E.exactSequencesClosed (And.intro E.snakeLemmaClosed E.longExactSequenceClosed)

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse
