import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure GeneRegulationNetworkPackage where
  transcriptionFactors : List String
  targetGenes : List String
  regulatoryInteractions : List (String × String × String)
  networkStability : Prop
  connectivity : ℕ

def GeneRegulationClosed (G : GeneRegulationNetworkPackage) : Prop :=
  G.networkStability ∧ G.connectivity ≥ 1

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse