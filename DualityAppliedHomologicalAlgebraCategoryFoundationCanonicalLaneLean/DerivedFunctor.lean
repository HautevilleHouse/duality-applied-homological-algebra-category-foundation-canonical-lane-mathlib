import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure DerivedFunctor (C D : Type u) [Category C] [Category D] [Abelian C] [Abelian D] where
  additiveFunctor : Functor C D
  leftDerived : ℕ → Functor C D
  rightDerived : ℕ → Functor C D
  derivedNaturalTransformation : ∀ n : ℕ, leftDerived n ⟶ additiveFunctor
  derivedTriangle : ∀ X : C, ∀ n : ℕ, leftDerived n X ⟶ rightDerived n X
  longExactSequence : Prop

def DerivedFunctorClosed {C D : Type u} [Category C] [Category D] [Abelian C] [Abelian D] (F : DerivedFunctor C D) : Prop :=
  F.longExactSequence

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse