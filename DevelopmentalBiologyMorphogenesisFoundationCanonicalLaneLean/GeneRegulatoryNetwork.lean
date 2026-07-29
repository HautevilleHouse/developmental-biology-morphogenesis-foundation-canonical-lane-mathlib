import HautevilleHouse.DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Gene Regulatory Network Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Prop
  targetGenes : Prop
  regulatoryInteractions : Prop
  networkTopology : Prop
  expressionDynamics : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  transcriptionFactorsClosed : G.transcriptionFactors
  targetGenesClosed : G.targetGenes
  regulatoryInteractionsClosed : G.regulatoryInteractions
  networkTopologyClosed : G.networkTopology
  expressionDynamicsClosed : G.expressionDynamics

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.transcriptionFactors ∧ G.targetGenes ∧
  G.regulatoryInteractions ∧ G.networkTopology ∧ G.expressionDynamics

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage)
    (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.transcriptionFactorsClosed
    (And.intro E.targetGenesClosed
      (And.intro E.regulatoryInteractionsClosed
        (And.intro E.networkTopologyClosed E.expressionDynamicsClosed)))

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse
