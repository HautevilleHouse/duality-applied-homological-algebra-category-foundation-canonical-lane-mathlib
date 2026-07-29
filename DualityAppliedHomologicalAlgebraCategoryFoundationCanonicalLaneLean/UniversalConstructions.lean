import DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure UniversalConstructionPackage where
  hasLimits : Prop
  hasColimits : Prop
  limitFormula : Prop
  colimitFormula : Prop
  yonedaLemma : Prop

structure UniversalConstructionEvidence (U : UniversalConstructionPackage) where
  hasLimitsClosed : U.hasLimits
  hasColimitsClosed : U.hasColimits
  limitFormulaClosed : U.limitFormula
  colimitFormulaClosed : U.colimitFormula
  yonedaLemmaClosed : U.yonedaLemma

def UniversalConstructionClosed (U : UniversalConstructionPackage) : Prop :=
  U.hasLimits ∧ U.hasColimits ∧ U.limitFormula ∧ U.colimitFormula ∧ U.yonedaLemma

theorem universal_construction_closed_from_evidence (U : UniversalConstructionPackage)
    (E : UniversalConstructionEvidence U) : UniversalConstructionClosed U := by
  exact And.intro E.hasLimitsClosed
    (And.intro E.hasColimitsClosed
      (And.intro E.limitFormulaClosed
        (And.intro E.colimitFormulaClosed E.yonedaLemmaClosed)))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse