import DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure DualityPrinciplePackage {U : UniversalConstructionPackage}
    {A : AdjointFunctorPackage U} {Y : YonedaLemmaPackage A} where
  oppositeEquivalence : Prop
  dualStatementsPreserved : Prop
  homFunctorDuality : Prop
  dualityConclusion : Prop

structure DualityPrincipleEvidence {U : UniversalConstructionPackage}
    {A : AdjointFunctorPackage U} {Y : YonedaLemmaPackage A}
    (D : DualityPrinciplePackage Y) where
  oppositeEquivalenceClosed : D.oppositeEquivalence
  dualStatementsPreservedClosed : D.dualStatementsPreserved
  homFunctorDualityClosed : D.homFunctorDuality
  dualityConclusionClosed : D.dualityConclusion

def DualityPrincipleClosed {U : UniversalConstructionPackage}
    {A : AdjointFunctorPackage U} {Y : YonedaLemmaPackage A}
    (D : DualityPrinciplePackage Y) : Prop :=
  D.oppositeEquivalence ∧ D.dualStatementsPreserved ∧
  D.homFunctorDuality ∧ D.dualityConclusion

theorem duality_principle_closed_from_evidence {U : UniversalConstructionPackage}
    {A : AdjointFunctorPackage U} {Y : YonedaLemmaPackage A}
    (D : DualityPrinciplePackage Y) (E : DualityPrincipleEvidence D) :
    DualityPrincipleClosed D := by
  exact And.intro E.oppositeEquivalenceClosed
    (And.intro E.dualStatementsPreservedClosed
      (And.intro E.homFunctorDualityClosed E.dualityConclusionClosed))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse