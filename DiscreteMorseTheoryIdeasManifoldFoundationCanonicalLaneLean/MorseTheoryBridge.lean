import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

def discreteMorseBridgeClosed (A : AdmissibleClass) : Prop := 
  MorseComplexClosed (A.object : MorseComplexPackage) ∧
  DiscreteGradientFlowClosed (A.object : DiscreteGradientFlowPackage _) ∧
  DiscreteMorseHomologyClosed (A.object : DiscreteMorseHomologyPackage _) ∧
  FormanMorseClosed (A.object : FormanMorsePackage) ∧
  DiscreteMorseHomotopyClosed (A.object : DiscreteMorseHomotopyPackage _)

theorem bridge_from_admissible_class (A : AdmissibleClass) : discreteMorseBridgeClosed A := by
  unfold discreteMorseBridgeClosed
  have h1 : MorseComplexClosed (A.object : MorseComplexPackage) := by
    have := A.property
    exact this.1
  have h2 : DiscreteGradientFlowClosed (A.object : DiscreteGradientFlowPackage _) := by
    have := A.property
    exact this.2
  have h3 : DiscreteMorseHomologyClosed (A.object : DiscreteMorseHomologyPackage _) := by
    have := A.property
    exact this.3
  have h4 : FormanMorseClosed (A.object : FormanMorsePackage) := by
    have := A.property
    exact this.4
  have h5 : DiscreteMorseHomotopyClosed (A.object : DiscreteMorseHomotopyPackage _) := by
    have := A.property
    exact this.5
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse