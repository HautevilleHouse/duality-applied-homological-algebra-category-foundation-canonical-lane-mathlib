import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure AbelianCategoryAxioms where
  kernelCokernelExistence : Prop
  monoEpiFactorization : Prop
  exactnessCondition : Prop

structure AbelianCategoryEvidence (A : AbelianCategoryAxioms) where
  kernelCokernelExistenceClosed : A.kernelCokernelExistence
  monoEpiFactorizationClosed : A.monoEpiFactorization
  exactnessConditionClosed : A.exactnessCondition

def AbelianCategoryClosed (A : AbelianCategoryAxioms) : Prop :=
  A.kernelCokernelExistence ∧ A.monoEpiFactorization ∧ A.exactnessCondition

theorem abelian_category_closed_from_evidence (A : AbelianCategoryAxioms)
    (E : AbelianCategoryEvidence A) : AbelianCategoryClosed A := by
  exact And.intro E.kernelCokernelExistenceClosed (And.intro E.monoEpiFactorizationClosed E.exactnessConditionClosed)

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse