import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure GeneticRegulatoryNetworkPackage where
  geneList : List String
  regulatoryInteractions : Prop
  booleanDynamicsDefined : Prop
  attractorExistence : Prop
  morphogenGradientInput : Prop

structure GeneticRegulatoryNetworkEvidence (G : GeneticRegulatoryNetworkPackage) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  booleanDynamicsDefinedClosed : G.booleanDynamicsDefined
  attractorExistenceClosed : G.attractorExistence
  morphogenGradientInputClosed : G.morphogenGradientInput

def GeneticRegulatoryNetworkClosed (G : GeneticRegulatoryNetworkPackage) : Prop :=
  G.regulatoryInteractions ∧ G.booleanDynamicsDefined ∧
  G.attractorExistence ∧ G.morphogenGradientInput

theorem genetic_regulatory_network_closed_from_evidence
    (G : GeneticRegulatoryNetworkPackage) (E : GeneticRegulatoryNetworkEvidence G) :
    GeneticRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed
    (And.intro E.booleanDynamicsDefinedClosed
      (And.intro E.attractorExistenceClosed E.morphogenGradientInputClosed))

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse
