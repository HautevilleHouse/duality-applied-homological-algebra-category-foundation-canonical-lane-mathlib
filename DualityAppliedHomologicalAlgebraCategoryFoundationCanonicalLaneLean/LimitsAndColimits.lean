import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure LimitsAndColimitsPackage where
  cones : Prop
  limitsExist : Prop
  cocones : Prop
  colimitsExist : Prop
  completeness : Prop
  cocompleteness : Prop

structure LimitsAndColimitsEvidence (L : LimitsAndColimitsPackage) where
  conesClosed : L.cones
  limitsExistClosed : L.limitsExist
  coconesClosed : L.cocones
  colimitsExistClosed : L.colimitsExist
  completenessClosed : L.completeness
  cocompletenessClosed : L.cocompleteness

def LimitsAndColimitsClosed (L : LimitsAndColimitsPackage) : Prop :=
  L.cones ∧ L.limitsExist ∧ L.cocones ∧ L.colimitsExist ∧ L.completeness ∧ L.cocompleteness

theorem limits_and_colimits_closed_from_evidence
    (L : LimitsAndColimitsPackage) (E : LimitsAndColimitsEvidence L) :
    LimitsAndColimitsClosed L := by
  exact And.intro E.conesClosed
    (And.intro E.limitsExistClosed
      (And.intro E.coconesClosed
        (And.intro E.colimitsExistClosed
          (And.intro E.completenessClosed E.cocompletenessClosed))))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse