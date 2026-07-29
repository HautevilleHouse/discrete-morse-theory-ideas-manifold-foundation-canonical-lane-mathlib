import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure HandleDecompositionPackage where
  handles : List (ℕ × ℕ)
  attachmentMaps : Prop
  core : Prop
  cancellation : Prop
  manifoldReconstruction : Prop

structure HandleDecompositionEvidence (H : HandleDecompositionPackage) where
  attachmentMapsClosed : H.attachmentMaps
  coreClosed : H.core
  cancellationClosed : H.cancellation
  manifoldReconstructionClosed : H.manifoldReconstruction

def HandleDecompositionClosed (H : HandleDecompositionPackage) : Prop :=
  H.attachmentMaps ∧ H.core ∧ H.cancellation ∧ H.manifoldReconstruction

theorem handle_decomposition_closed_from_evidence (H : HandleDecompositionPackage) (E : HandleDecompositionEvidence H) :
    HandleDecompositionClosed H := by
  exact And.intro E.attachmentMapsClosed (And.intro E.coreClosed (And.intro E.cancellationClosed E.manifoldReconstructionClosed))

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse
