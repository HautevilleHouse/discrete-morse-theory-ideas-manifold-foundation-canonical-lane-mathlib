import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure MorseComplexPackage where
  cellComplex : Type u
  cellDimension : Nat -> Nat
  boundaryMap : Type v
  morseFunction : Type w
  gradientVectorField : Type x
  criticalPoints : Nat
  morseSmaleCondition : Prop
  boundaryMapLawful : Prop
  morseFunctionSmooth : Prop
  gradientFieldConsistent : Prop

structure MorseComplexEvidence (M : MorseComplexPackage) where
  morseSmaleConditionClosed : M.morseSmaleCondition
  boundaryMapLawfulClosed : M.boundaryMapLawful
  morseFunctionSmoothClosed : M.morseFunctionSmooth
  gradientFieldConsistentClosed : M.gradientFieldConsistent

def MorseComplexClosed (M : MorseComplexPackage) : Prop :=
  M.morseSmaleCondition ∧ M.boundaryMapLawful ∧ M.morseFunctionSmooth ∧ M.gradientFieldConsistent

theorem morse_complex_closed_from_evidence (M : MorseComplexPackage) (E : MorseComplexEvidence M) : MorseComplexClosed M := by
  exact And.intro E.morseSmaleConditionClosed (And.intro E.boundaryMapLawfulClosed (And.intro E.morseFunctionSmoothClosed E.gradientFieldConsistentClosed))

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse
