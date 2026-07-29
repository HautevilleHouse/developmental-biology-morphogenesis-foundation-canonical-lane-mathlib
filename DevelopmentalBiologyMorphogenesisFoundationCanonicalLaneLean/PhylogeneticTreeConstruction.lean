import HautevilleHouse.DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Phylogenetic Tree Construction Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure PhylogeneticTreePackage where
  sequenceAlignment : Prop
  evolutionaryModel : Prop
  likelihoodCalculation : Prop
  treeTopologyInference : Prop
  branchLengthEstimation : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  sequenceAlignmentClosed : P.sequenceAlignment
  evolutionaryModelClosed : P.evolutionaryModel
  likelihoodCalculationClosed : P.likelihoodCalculation
  treeTopologyInferenceClosed : P.treeTopologyInference
  branchLengthEstimationClosed : P.branchLengthEstimation

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.sequenceAlignment ∧ P.evolutionaryModel ∧
  P.likelihoodCalculation ∧ P.treeTopologyInference ∧ P.branchLengthEstimation

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage)
    (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.sequenceAlignmentClosed
    (And.intro E.evolutionaryModelClosed
      (And.intro E.likelihoodCalculationClosed
        (And.intro E.treeTopologyInferenceClosed E.branchLengthEstimationClosed)))

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse
