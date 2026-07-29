import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure MorphogenGradientFormationPackage where
  morphogens : Type u
  sourceAndSink : Type v
  diffusionRate : Type w
  gradientEstablished : Prop
  positionalInformation : Prop
  thresholdResponse : Prop

structure MorphogenGradientFormationEvidence (P : MorphogenGradientFormationPackage) where
  gradientEstablishedClosed : P.gradientEstablished
  positionalInformationClosed : P.positionalInformation
  thresholdResponseClosed : P.thresholdResponse

def MorphogenGradientFormationClosed (P : MorphogenGradientFormationPackage) : Prop :=
  P.gradientEstablished ∧ P.positionalInformation ∧ P.thresholdResponse

theorem morphogen_gradient_formation_closed_from_evidence
    (P : MorphogenGradientFormationPackage)
    (E : MorphogenGradientFormationEvidence P) :
    MorphogenGradientFormationClosed P := by
  exact And.intro E.gradientEstablishedClosed
    (And.intro E.positionalInformationClosed E.thresholdResponseClosed)

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse