import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesList : List String
  distanceMatrix : List (List ℝ)
  treeTopology : String
  bootstrapSupport : ℝ
  evolutionaryModel : String

def PhylogeneticClosed (P : PhylogeneticTreePackage) : Prop :=
  P.bootstrapSupport ≥ 70.0 ∧ P.evolutionaryModel ≠ ""

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse