import canonicalLaneMathlib.AdmissibleClass
import DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean.DiscreteMorseComplex

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure GradientFlowPackage (M : DiscreteMorseComplexPackage) where
  flowLines : Type u
  indexDifference : flowLines → ℕ
  boundaryOperator : flowLines → flowLines
  flowMatchesGradient : Prop

structure GradientFlowEvidence {M : DiscreteMorseComplexPackage}
    (G : GradientFlowPackage M) where
  flowMatchesGradientClosed : G.flowMatchesGradient

def GradientFlowClosed {M : DiscreteMorseComplexPackage} (G : GradientFlowPackage M) : Prop :=
  G.flowMatchesGradient

theorem gradient_flow_closed_from_evidence {M : DiscreteMorseComplexPackage}
    (G : GradientFlowPackage M) (E : GradientFlowEvidence G) : GradientFlowClosed G := by
  exact E.flowMatchesGradientClosed

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse