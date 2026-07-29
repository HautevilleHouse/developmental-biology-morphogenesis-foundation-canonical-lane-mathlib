import HautevilleHouse.DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Morphogen Gradient Model Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogenSource : Prop
  gradientFormation : Prop
  thresholdResponse : Prop
  targetGeneActivation : Prop
  tissuePatterning : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  morphogenSourceClosed : M.morphogenSource
  gradientFormationClosed : M.gradientFormation
  thresholdResponseClosed : M.thresholdResponse
  targetGeneActivationClosed : M.targetGeneActivation
  tissuePatterningClosed : M.tissuePatterning

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.morphogenSource ∧ M.gradientFormation ∧
  M.thresholdResponse ∧ M.targetGeneActivation ∧ M.tissuePatterning

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.morphogenSourceClosed
    (And.intro E.gradientFormationClosed
      (And.intro E.thresholdResponseClosed
        (And.intro E.targetGeneActivationClosed E.tissuePatterningClosed)))

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse
