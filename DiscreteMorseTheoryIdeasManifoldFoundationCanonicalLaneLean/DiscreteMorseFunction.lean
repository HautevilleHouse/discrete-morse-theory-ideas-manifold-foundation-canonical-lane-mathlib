import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure DiscreteMorseFunction where
  domain : Type
  map : domain → ℤ
  criticalPoints : Set domain
  regularValues : Set ℤ
  gradientFlow : Prop
  homotopyEquivalence : Prop

structure DiscreteMorseFunctionEvidence (f : DiscreteMorseFunction) where
  gradientFlowClosed : f.gradientFlow
  homotopyEquivalenceClosed : f.homotopyEquivalence

def DiscreteMorseFunctionClosed (f : DiscreteMorseFunction) : Prop :=
  f.gradientFlow ∧ f.homotopyEquivalence

theorem discrete_morse_function_closed_from_evidence (f : DiscreteMorseFunction) (E : DiscreteMorseFunctionEvidence f) :
    DiscreteMorseFunctionClosed f := by
  exact And.intro E.gradientFlowClosed E.homotopyEquivalenceClosed

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse
