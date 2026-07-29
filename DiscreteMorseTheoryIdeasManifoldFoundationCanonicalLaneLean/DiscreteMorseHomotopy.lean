import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure DiscreteMorseHomotopyPackage {M : MorseComplexPackage} where
  homotopyType : Type u
  simpleHomotopyEquivalence : Type v
  collapseOperation : Type w
  homotopyPreservingMorseFunction : Prop
  simpleHomotopyEquivalenceExists : Prop
  collapsePreservesHomology : Prop

structure DiscreteMorseHomotopyEvidence {M : MorseComplexPackage} (H : DiscreteMorseHomotopyPackage M) where
  homotopyPreservingMorseFunctionClosed : H.homotopyPreservingMorseFunction
  simpleHomotopyEquivalenceExistsClosed : H.simpleHomotopyEquivalenceExists
  collapsePreservesHomologyClosed : H.collapsePreservesHomology

def DiscreteMorseHomotopyClosed {M : MorseComplexPackage} (H : DiscreteMorseHomotopyPackage M) : Prop :=
  H.homotopyPreservingMorseFunction ∧ H.simpleHomotopyEquivalenceExists ∧ H.collapsePreservesHomology

theorem discrete_morse_homotopy_closed_from_evidence {M : MorseComplexPackage} (H : DiscreteMorseHomotopyPackage M) (E : DiscreteMorseHomotopyEvidence H) : DiscreteMorseHomotopyClosed H := by
  exact And.intro E.homotopyPreservingMorseFunctionClosed (And.intro E.simpleHomotopyEquivalenceExistsClosed E.collapsePreservesHomologyClosed)

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse
