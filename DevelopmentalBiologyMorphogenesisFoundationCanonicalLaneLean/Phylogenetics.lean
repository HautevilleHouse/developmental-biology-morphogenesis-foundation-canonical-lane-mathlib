import canonicalLaneMathlib.AdmissibleClass

/-!
# Phylogenetics Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesList : List String
  distanceMatrix : List (List Real)
  treeTopology : Prop
  branchLengths : List Real
  bootstrapSupport : List Nat

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths ≠ []
  bootstrapSupportClosed : ∀ s ∈ P.bootstrapSupport, s ≥ 70

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ≠ [] ∧ ∀ s ∈ P.bootstrapSupport, s ≥ 70

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeTopologyClosed (And.intro E.branchLengthsClosed E.bootstrapSupportClosed)

end DevelopmentalBiologyMorphogenesisFoundationCanonicalLaneLean
end HautevilleHouse
