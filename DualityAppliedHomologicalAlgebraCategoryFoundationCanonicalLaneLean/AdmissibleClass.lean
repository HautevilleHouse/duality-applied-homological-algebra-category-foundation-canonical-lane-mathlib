import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure AdmissibleObject where
  object : Type
  category : Type
  homSets : Type
  composition : Type
  identities : Type
  dualObject : Type
  dualFunctor : Type
  yonedaEmbedding : Type
  adjointPair : Type
  limitPreservation : Prop
  colimitPreservation : Prop

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse