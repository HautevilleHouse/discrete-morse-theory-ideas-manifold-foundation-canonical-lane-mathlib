import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean.DiscreteMorseComplex

/-!
# Morse Homology Package
-/

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure MorseHomologyPackage {M : Type u} [TopologicalSpace M]
    (C : DiscreteMorseComplexPackage M) where
  chainComplex : Type v
  boundaryOperator : chainComplex → chainComplex
  homologyGroups : Type w
  morseInequalities : Prop
  eulerCharacteristicMatches : Prop
  poincarePolynomialMatches : Prop

structure MorseHomologyEvidence {M : Type u} [TopologicalSpace M]
    {C : DiscreteMorseComplexPackage M} (H : MorseHomologyPackage C) where
  chainComplexDefined : Nonempty H.chainComplex
  boundaryOperatorDefined : Nonempty (H.boundaryOperator → H.boundaryOperator)
  homologyGroupsConstructed : Nonempty H.homologyGroups
  morseInequalitiesClosed : H.morseInequalities
  eulerCharacteristicMatchesClosed : H.eulerCharacteristicMatches
  poincarePolynomialMatchesClosed : H.poincarePolynomialMatches

def MorseHomologyClosed {M : Type u} [TopologicalSpace M]
    {C : DiscreteMorseComplexPackage M} (H : MorseHomologyPackage C) : Prop :=
  H.morseInequalities ∧ H.eulerCharacteristicMatches ∧ H.poincarePolynomialMatches

theorem morse_homology_closed_from_evidence
    {M : Type u} [TopologicalSpace M] {C : DiscreteMorseComplexPackage M}
    (H : MorseHomologyPackage C) (E : MorseHomologyEvidence H) :
    MorseHomologyClosed H :=
by
  exact And.intro E.morseInequalitiesClosed
    (And.intro E.eulerCharacteristicMatchesClosed E.poincarePolynomialMatchesClosed)

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse