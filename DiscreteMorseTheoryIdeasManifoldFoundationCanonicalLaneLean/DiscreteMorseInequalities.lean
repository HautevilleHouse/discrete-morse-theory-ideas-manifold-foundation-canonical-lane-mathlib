import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure DiscreteMorseInequalitiesPackage where
  bettiNumbers : Type u
  morseNumbers : Type v
  weakMorseInequalities : Prop
  strongMorseInequalities : Prop
  morsePolynomial : Type w
  inequalitiesClosed : Prop

structure DiscreteMorseInequalitiesEvidence (I : DiscreteMorseInequalitiesPackage) where
  weakMorseInequalitiesClosed : I.weakMorseInequalities
  strongMorseInequalitiesClosed : I.strongMorseInequalities
  inequalitiesClosedClosed : I.inequalitiesClosed

def DiscreteMorseInequalitiesClosed (I : DiscreteMorseInequalitiesPackage) : Prop :=
  I.weakMorseInequalities ∧ I.strongMorseInequalities ∧ I.inequalitiesClosed

theorem discrete_morse_inequalities_closed_from_evidence (I : DiscreteMorseInequalitiesPackage)
    (E : DiscreteMorseInequalitiesEvidence I) : DiscreteMorseInequalitiesClosed I := by
  exact And.intro E.weakMorseInequalitiesClosed
    (And.intro E.strongMorseInequalitiesClosed E.inequalitiesClosedClosed)

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse