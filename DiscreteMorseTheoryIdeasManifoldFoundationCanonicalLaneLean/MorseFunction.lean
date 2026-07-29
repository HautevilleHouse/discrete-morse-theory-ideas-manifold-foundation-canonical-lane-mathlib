import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure MorseFunction (M : CWComplex) where
  func : (n : Nat) → M.cells n → ℝ
  criticalCells : (n : Nat) → Set (M.cells n)
  nondegeneracy : Prop
  criticalPointsIsolated : Prop
  morseIndex : (n : Nat) → M.cells n → ℕ
  functionSmooth : Prop

structure MorseFunctionEvidence {M : CWComplex} (f : MorseFunction M) where
  nondegeneracyClosed : f.nondegeneracy
  criticalPointsIsolatedClosed : f.criticalPointsIsolated
  functionSmoothClosed : f.functionSmooth

def MorseFunctionClosed {M : CWComplex} (f : MorseFunction M) : Prop :=
  f.nondegeneracy ∧ f.criticalPointsIsolated ∧ f.functionSmooth

theorem morse_function_closed_from_evidence {M : CWComplex} (f : MorseFunction M) (E : MorseFunctionEvidence f) :
    MorseFunctionClosed f := by
  exact And.intro E.nondegeneracyClosed (And.intro E.criticalPointsIsolatedClosed E.functionSmoothClosed)

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse