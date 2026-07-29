import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure CWComplex where
  cells : Nat → Type
  attachingMaps : (n : Nat) → (cells n → cells (n-1))
  dimension : Nat
  finiteComplex : Prop
  closureFinite : Prop
  weakTopology : Prop

structure CWComplexEvidence (C : CWComplex) where
  cellsDefined : (n : Nat) → Nonempty (C.cells n)
  attachingMapsContinuous : (n : Nat) → Continuous (C.attachingMaps n)
  finiteComplexClosed : C.finiteComplex
  closureFiniteClosed : C.closureFinite
  weakTopologyClosed : C.weakTopology

def CWComplexClosed (C : CWComplex) : Prop :=
  C.finiteComplex ∧ C.closureFinite ∧ C.weakTopology

theorem cw_complex_closed_from_evidence (C : CWComplex) (E : CWComplexEvidence C) :
    CWComplexClosed C := by
  exact And.intro E.finiteComplexClosed (And.intro E.closureFiniteClosed E.weakTopologyClosed)

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse