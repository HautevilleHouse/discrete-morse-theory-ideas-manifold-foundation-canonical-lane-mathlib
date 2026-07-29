import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

structure MorseInequalitiesPackage where
  weakInequalities : Prop
  strongInequalities : Prop
  bettiNumbers : ℕ → ℕ
  morseNumbers : ℕ → ℕ
  eulerCharacteristic : Prop

structure MorseInequalitiesEvidence (M : MorseInequalitiesPackage) where
  weakInequalitiesClosed : M.weakInequalities
  strongInequalitiesClosed : M.strongInequalities
  eulerCharacteristicClosed : M.eulerCharacteristic

def MorseInequalitiesClosed (M : MorseInequalitiesPackage) : Prop :=
  M.weakInequalities ∧ M.strongInequalities ∧ M.eulerCharacteristic

theorem morse_inequalities_closed_from_evidence (M : MorseInequalitiesPackage) (E : MorseInequalitiesEvidence M) :
    MorseInequalitiesClosed M := by
  exact And.intro E.weakInequalitiesClosed (And.intro E.strongInequalitiesClosed E.eulerCharacteristicClosed)

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse
