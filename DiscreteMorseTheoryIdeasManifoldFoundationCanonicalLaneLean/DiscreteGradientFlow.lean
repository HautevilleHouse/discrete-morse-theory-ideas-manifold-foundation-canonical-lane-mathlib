import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure DiscreteGradientFlowPackage {M : MorseComplexPackage} where
  flowLines : Type u
  flowDirection : Type v
  flowTimeDiscrete : Nat -> Type w
  gradientFlowEquations : Prop
  flowUniqueness : Prop
  flowConvergence : Prop
  flowDirectionConsistent : M.gradientFieldConsistent -> Prop
  flowFromBoundaryCompatible : Prop

structure DiscreteGradientFlowEvidence {M : MorseComplexPackage} (F : DiscreteGradientFlowPackage M) where
  gradientFlowEquationsClosed : F.gradientFlowEquations
  flowUniquenessClosed : F.flowUniqueness
  flowConvergenceClosed : F.flowConvergence
  flowDirectionConsistentClosed : F.flowDirectionConsistent
  flowFromBoundaryCompatibleClosed : F.flowFromBoundaryCompatible

def DiscreteGradientFlowClosed {M : MorseComplexPackage} (F : DiscreteGradientFlowPackage M) : Prop :=
  F.gradientFlowEquations ∧ F.flowUniqueness ∧ F.flowConvergence ∧ F.flowFromBoundaryCompatible

theorem discrete_gradient_flow_closed_from_evidence {M : MorseComplexPackage} (F : DiscreteGradientFlowPackage M) (E : DiscreteGradientFlowEvidence F) : DiscreteGradientFlowClosed F := by
  exact And.intro E.gradientFlowEquationsClosed (And.intro E.flowUniquenessClosed (And.intro E.flowConvergenceClosed E.flowFromBoundaryCompatibleClosed))

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse
