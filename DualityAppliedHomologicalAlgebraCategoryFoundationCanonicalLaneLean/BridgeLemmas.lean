import canonicalLaneMathlib.AdmissibleClass
import DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.limitPreservation ∧ A.object.colimitPreservation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.limitPreservation A.object.colimitPreservation

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse