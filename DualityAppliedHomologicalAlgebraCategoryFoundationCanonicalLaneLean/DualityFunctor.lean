import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure DualityFunctorPackage where
  sourceCategory : Type
  targetCategory : Type
  functorMap : Type
  preservesComposition : Prop
  preservesIdentities : Prop
  dualityProperty : Prop

structure DualityFunctorEvidence (D : DualityFunctorPackage) where
  preservesCompositionClosed : D.preservesComposition
  preservesIdentitiesClosed : D.preservesIdentities
  dualityPropertyClosed : D.dualityProperty

def DualityFunctorClosed (D : DualityFunctorPackage) : Prop :=
  D.preservesComposition ∧ D.preservesIdentities ∧ D.dualityProperty

theorem duality_functor_closed_from_evidence
    (D : DualityFunctorPackage) (E : DualityFunctorEvidence D) :
    DualityFunctorClosed D := by
  exact And.intro E.preservesCompositionClosed
    (And.intro E.preservesIdentitiesClosed E.dualityPropertyClosed)

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse