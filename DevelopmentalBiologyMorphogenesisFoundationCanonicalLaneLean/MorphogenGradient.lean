import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogenConcentration : Type
  diffusionCoefficient : Prop
  sourceLocalization : Prop
  gradientFormation : Prop
  positionalInformation : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  diffusionCoefficientClosed : M.diffusionCoefficient
  sourceLocalizationClosed : M.sourceLocalization
  gradientFormationClosed : M.gradientFormation
  positionalInformationClosed : M.positionalInformation

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.diffusionCoefficient ∧ M.sourceLocalization ∧
  M.gradientFormation ∧ M.positionalInformation

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.sourceLocalizationClosed
      (And.intro E.gradientFormationClosed E.positionalInformationClosed))

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse
