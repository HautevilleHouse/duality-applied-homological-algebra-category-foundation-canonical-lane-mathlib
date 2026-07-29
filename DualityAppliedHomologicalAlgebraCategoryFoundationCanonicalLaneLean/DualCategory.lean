import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure DualCategory (C : Type u) [Category C] where
  opposite : C → C
  dualityFunctor : Functor C (Opposite C)
  dualityIsEquivalence : IsEquivalence dualityFunctor
  dualAdjoint : Functor (Opposite C) C
  adjunction : dualityFunctor ⊣ dualAdjoint
  evaluationMap : ∀ (X : C), X ⟶ dualAdjoint.obj (dualityFunctor.obj X)
  coevaluationMap : ∀ (X : C), dualityFunctor.obj (dualAdjoint.obj X) ⟶ X
  triangleIdentities : Prop

def DualCategoryClosed {C : Type u} [Category C] (D : DualCategory C) : Prop :=
  D.triangleIdentities

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse