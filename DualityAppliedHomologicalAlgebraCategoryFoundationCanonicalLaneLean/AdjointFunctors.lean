import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure AdjointFunctorsPackage where
  leftAdjoint : Type
  rightAdjoint : Type
  unitMorphism : Prop
  counitMorphism : Prop
  triangleIdentities : Prop
  adjunctionExists : Prop

structure AdjointFunctorsEvidence (A : AdjointFunctorsPackage) where
  unitMorphismClosed : A.unitMorphism
  counitMorphismClosed : A.counitMorphism
  triangleIdentitiesClosed : A.triangleIdentities
  adjunctionExistsClosed : A.adjunctionExists

def AdjointFunctorsClosed (A : AdjointFunctorsPackage) : Prop :=
  A.unitMorphism ∧ A.counitMorphism ∧ A.triangleIdentities ∧ A.adjunctionExists

theorem adjoint_functors_closed_from_evidence
    (A : AdjointFunctorsPackage) (E : AdjointFunctorsEvidence A) :
    AdjointFunctorsClosed A := by
  exact And.intro E.unitMorphismClosed
    (And.intro E.counitMorphismClosed
      (And.intro E.triangleIdentitiesClosed E.adjunctionExistsClosed))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse