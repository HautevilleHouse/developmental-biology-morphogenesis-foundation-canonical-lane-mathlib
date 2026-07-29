import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure HardyWeinbergPackage where
  populationSize : ℕ
  alleleAFreq : ℝ
  alleleBFreq : ℝ
  observedGenotypes : ℝ × ℝ × ℝ
  expectedGenotypes : ℝ × ℝ × ℝ
  equilibriumCondition : Prop

def HardyWeinbergClosed (P : HardyWeinbergPackage) : Prop :=
  P.alleleAFreq + P.alleleBFreq = 1 ∧
  P.equilibriumCondition

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse