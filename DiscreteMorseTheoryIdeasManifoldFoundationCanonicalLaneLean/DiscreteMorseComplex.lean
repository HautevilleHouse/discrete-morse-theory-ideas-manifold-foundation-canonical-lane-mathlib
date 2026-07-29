import canonicalLaneMathlib.AdmissibleClass

/-!
# Discrete Morse Complex Package
-/

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure DiscreteMorseComplexPackage {M : Type u} [TopologicalSpace M] where
  cellComplex : Type v
  criticalCells : List cellComplex
  morseIndex : cellComplex → ℕ
  discreteVectorField : cellComplex → cellComplex
  gradientFlowLines : Prop
  regularCell : cellComplex → Prop
  stableManifold : cellComplex → Type w
  unstableManifold : cellComplex → Type x

structure DiscreteMorseComplexEvidence {M : Type u} [TopologicalSpace M]
    (C : DiscreteMorseComplexPackage M) where
  gradientFlowLinesClosed : C.gradientFlowLines
  regularCellDefined : ∀ (c : C.cellComplex), C.regularCell c ↔ c ∉ C.criticalCells
  stableManifoldConstructed : ∀ (c : C.cellComplex), Nonempty (C.stableManifold c)
  unstableManifoldConstructed : ∀ (c : C.cellComplex), Nonempty (C.unstableManifold c)

def DiscreteMorseComplexClosed {M : Type u} [TopologicalSpace M]
    (C : DiscreteMorseComplexPackage M) : Prop :=
  C.gradientFlowLines ∧
  (∀ (c : C.cellComplex), C.regularCell c ↔ c ∉ C.criticalCells) ∧
  (∀ (c : C.cellComplex), Nonempty (C.stableManifold c)) ∧
  (∀ (c : C.cellComplex), Nonempty (C.unstableManifold c))

theorem discrete_morse_complex_closed_from_evidence
    {M : Type u} [TopologicalSpace M] (C : DiscreteMorseComplexPackage M)
    (E : DiscreteMorseComplexEvidence C) : DiscreteMorseComplexClosed C :=
by
  exact And.intro E.gradientFlowLinesClosed
    (And.intro E.regularCellDefined
      (And.intro E.stableManifoldConstructed E.unstableManifoldConstructed))

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse