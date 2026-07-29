import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure FormanMorsePackage where
  cellComplex : Type u
  discreteMorseFunction : Type v
  formanGradientVector : Type w
  criticalCells : Nat
  facePoset : Type x
  morseFunctionConsistent : Prop
  gradientVectorFieldIntegrable : Prop
  discreteMorseSmaleCondition : Prop

structure FormanMorseEvidence (F : FormanMorsePackage) where
  morseFunctionConsistentClosed : F.morseFunctionConsistent
  gradientVectorFieldIntegrableClosed : F.gradientVectorFieldIntegrable
  discreteMorseSmaleConditionClosed : F.discreteMorseSmaleCondition

def FormanMorseClosed (F : FormanMorsePackage) : Prop :=
  F.morseFunctionConsistent ∧ F.gradientVectorFieldIntegrable ∧ F.discreteMorseSmaleCondition

theorem forman_morse_closed_from_evidence (F : FormanMorsePackage) (E : FormanMorseEvidence F) : FormanMorseClosed F := by
  exact And.intro E.morseFunctionConsistentClosed (And.intro E.gradientVectorFieldIntegrableClosed E.discreteMorseSmaleConditionClosed)

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse
