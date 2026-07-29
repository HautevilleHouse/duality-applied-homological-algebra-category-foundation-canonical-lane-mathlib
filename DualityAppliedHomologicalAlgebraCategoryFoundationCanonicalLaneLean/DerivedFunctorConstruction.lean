import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure DerivedFunctorPackage where
  injectiveResolutionExists : Prop
  projectiveResolutionExists : Prop
  leftDerivedDefined : Prop
  rightDerivedDefined : Prop
  longExactSequence : Prop

structure DerivedFunctorEvidence (D : DerivedFunctorPackage) where
  injectiveResolutionExistsClosed : D.injectiveResolutionExists
  projectiveResolutionExistsClosed : D.projectiveResolutionExists
  leftDerivedDefinedClosed : D.leftDerivedDefined
  rightDerivedDefinedClosed : D.rightDerivedDefined
  longExactSequenceClosed : D.longExactSequence

def DerivedFunctorClosed (D : DerivedFunctorPackage) : Prop :=
  D.injectiveResolutionExists ∧ D.projectiveResolutionExists ∧
  D.leftDerivedDefined ∧ D.rightDerivedDefined ∧ D.longExactSequence

theorem derived_functor_closed_from_evidence (D : DerivedFunctorPackage)
    (E : DerivedFunctorEvidence D) : DerivedFunctorClosed D := by
  exact And.intro E.injectiveResolutionExistsClosed
    (And.intro E.projectiveResolutionExistsClosed
      (And.intro E.leftDerivedDefinedClosed
        (And.intro E.rightDerivedDefinedClosed E.longExactSequenceClosed)))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse