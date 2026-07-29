import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure LinkagePackage where
  markerPositions : List ℕ
  recombinationFraction : ℝ
  lodScore : ℝ
  linkageEvidence : Prop

def LinkageClosed (L : LinkagePackage) : Prop :=
  L.lodScore > 3.0 ∧ L.linkageEvidence

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse