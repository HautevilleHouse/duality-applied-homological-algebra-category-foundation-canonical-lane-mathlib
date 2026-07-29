import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure ChainComplex (C : Type u) [Category C] [Abelian C] where
  objects : ℕ → C
  differentials : ∀ n : ℕ, objects (n+1) ⟶ objects n
  chainComplexCondition : ∀ n : ℕ, differentials n ∘ differentials (n+1) = 0
  homology : ℕ → C
  homologyProjection : ∀ n : ℕ, objects n ⟶ homology n
  homologyInclusion : ∀ n : ℕ, homology n ⟶ objects n
  homologyCondition : ∀ n : ℕ, homologyProjection n ∘ differentials n = 0 ∧ differentials n ∘ homologyInclusion n = 0

def ChainComplexClosed {C : Type u} [Category C] [Abelian C] (K : ChainComplex C) : Prop :=
  K.chainComplexCondition

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse