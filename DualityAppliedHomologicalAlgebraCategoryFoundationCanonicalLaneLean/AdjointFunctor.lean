import DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure AdjointFunctorPackage (A : AdmissibleObject) where
  leftAdjointExistence : Prop
  rightAdjointExistence : Prop
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence (A : AdmissibleObject) (F : AdjointFunctorPackage A) where
  leftAdjointClosed : F.leftAdjointExistence
  rightAdjointClosed : F.rightAdjointExistence
  unitNaturalClosed : F.unitNatural
  counitNaturalClosed : F.counitNatural
  triangleIdentitiesClosed : F.triangleIdentities

def AdjointFunctorClosed (A : AdmissibleObject) (F : AdjointFunctorPackage A) : Prop :=
  F.leftAdjointExistence ∧ F.rightAdjointExistence ∧
  F.unitNatural ∧ F.counitNatural ∧ F.triangleIdentities

theorem adjoint_functor_closed_from_evidence (A : AdmissibleObject) (F : AdjointFunctorPackage A) (E : AdjointFunctorEvidence A F) : AdjointFunctorClosed A F := by
  exact And.intro E.leftAdjointClosed
    (And.intro E.rightAdjointClosed
      (And.intro E.unitNaturalClosed
        (And.intro E.counitNaturalClosed E.triangleIdentitiesClosed)))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse