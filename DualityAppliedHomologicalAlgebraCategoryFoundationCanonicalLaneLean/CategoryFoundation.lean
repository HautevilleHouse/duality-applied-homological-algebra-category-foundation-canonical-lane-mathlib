import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure CategoryFoundationPackage where
  objectsExist : Prop
  morphismsExist : Prop
  compositionDefined : Prop
  identitiesDefined : Prop
  associativityHolds : Prop
  unitLawsHold : Prop

structure CategoryFoundationEvidence (C : CategoryFoundationPackage) where
  objectsExistClosed : C.objectsExist
  morphismsExistClosed : C.morphismsExist
  compositionDefinedClosed : C.compositionDefined
  identitiesDefinedClosed : C.identitiesDefined
  associativityHoldsClosed : C.associativityHolds
  unitLawsHoldClosed : C.unitLawsHold

def CategoryFoundationClosed (C : CategoryFoundationPackage) : Prop :=
  C.objectsExist ∧ C.morphismsExist ∧ C.compositionDefined ∧
  C.identitiesDefined ∧ C.associativityHolds ∧ C.unitLawsHold

theorem category_foundation_closed_from_evidence
    (C : CategoryFoundationPackage) (E : CategoryFoundationEvidence C) :
    CategoryFoundationClosed C := by
  exact And.intro E.objectsExistClosed
    (And.intro E.morphismsExistClosed
      (And.intro E.compositionDefinedClosed
        (And.intro E.identitiesDefinedClosed
          (And.intro E.associativityHoldsClosed E.unitLawsHoldClosed))))

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse