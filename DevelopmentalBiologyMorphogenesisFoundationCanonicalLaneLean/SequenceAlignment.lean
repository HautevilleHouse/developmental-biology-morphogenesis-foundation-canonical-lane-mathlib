import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : String
  referenceSequence : String
  alignmentScore : ℕ
  gapPenalty : ℕ
  identityPercent : ℝ

def AlignmentClosed (A : SequenceAlignmentPackage) : Prop :=
  A.alignmentScore ≥ 0 ∧ A.identityPercent ≥ 80.0

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse