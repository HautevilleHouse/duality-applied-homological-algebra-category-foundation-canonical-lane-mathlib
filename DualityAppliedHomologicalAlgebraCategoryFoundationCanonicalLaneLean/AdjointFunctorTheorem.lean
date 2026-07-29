import DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean.UniversalConstructions

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure AdjointFunctorPackage {U : UniversalConstructionPackage} where
  leftAdjoint : Prop
  rightAdjoint : Prop
  unitCounit : Prop
  triangleIdentities : Prop
  adjointExists : Prop

structure AdjointFunctorEvidence {U : UniversalConstructionPackage}
    (A : AdjointFunctorPackage U) where
  leftAdjointClosed : A.leftAdjoint
  rightAdjointClosed : A.rightAdjoint
  unitCounitClosed : A.unitCounit
  triangleIdentitiesClosed : A.triangleIdentities
  adjointExistsClosed : A.adjointExists

def AdjointFunctorClosed {U : UniversalConstructionPackage}
    (A : AdjointFunctorPackage U) : Prop :=
  A.leftAdjoint ∧ A.rightAdjoint ∧ A.unitCounit ∧ A.triangleIdentities ∧ A.adjointExists

theorem adjoint_functor_closed_from_evidence {U : UniversalConstructionPackage}
    (A : AdjointFunctorPackage U) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.leftAdjointClosed
    (And.intro E.rightAdjointClosed
      (And.intro E.unitCounitClosed
        (And.intro E.triangleIdentitiesClosed E.adjointExistsClosed)))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse