import DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.Limits.Basic
import Mathlib.CategoryTheory.Yoneda

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  category : Type u
  [instCategory : CategoryTheory.Category.{v} category]
  hasLimits : Prop
  hasColimits : Prop
  hasYoneda : Prop
  dualityEquivalence : Prop
  conclusion : dualityEquivalence

def DualityWitnessClosed (O : AdmittedObject) : Prop :=
  O.dualityEquivalence

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse