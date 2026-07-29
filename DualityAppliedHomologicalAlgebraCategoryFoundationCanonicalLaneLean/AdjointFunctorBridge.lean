import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  unit : Prop
  counit : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence (P : AdjointFunctorPackage) where
  unitClosed : P.unit
  counitClosed : P.counit
  triangleIdentitiesClosed : P.triangleIdentities

def AdjointFunctorClosed (P : AdjointFunctorPackage) : Prop :=
  P.unit ∧ P.counit ∧ P.triangleIdentities

theorem adjoint_functor_closed_from_evidence (P : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence P) : AdjointFunctorClosed P := by
  exact And.intro E.unitClosed (And.intro E.counitClosed E.triangleIdentitiesClosed)

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse