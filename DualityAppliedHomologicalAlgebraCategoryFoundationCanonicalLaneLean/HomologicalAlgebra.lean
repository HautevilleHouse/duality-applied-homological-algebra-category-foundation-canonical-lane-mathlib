import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure HomologicalAlgebraPackage where
  chainComplexes : Prop
  homologyDefined : Prop
  exactSequences : Prop
  derivedFunctors : Prop
  spectralSequences : Prop

structure HomologicalAlgebraEvidence (H : HomologicalAlgebraPackage) where
  chainComplexesClosed : H.chainComplexes
  homologyDefinedClosed : H.homologyDefined
  exactSequencesClosed : H.exactSequences
  derivedFunctorsClosed : H.derivedFunctors
  spectralSequencesClosed : H.spectralSequences

def HomologicalAlgebraClosed (H : HomologicalAlgebraPackage) : Prop :=
  H.chainComplexes ∧ H.homologyDefined ∧ H.exactSequences ∧
  H.derivedFunctors ∧ H.spectralSequences

theorem homological_algebra_closed_from_evidence
    (H : HomologicalAlgebraPackage) (E : HomologicalAlgebraEvidence H) :
    HomologicalAlgebraClosed H := by
  exact And.intro E.chainComplexesClosed
    (And.intro E.homologyDefinedClosed
      (And.intro E.exactSequencesClosed
        (And.intro E.derivedFunctorsClosed E.spectralSequencesClosed)))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse