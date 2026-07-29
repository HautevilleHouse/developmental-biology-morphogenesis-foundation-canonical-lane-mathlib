import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DevelopmentalBiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse
