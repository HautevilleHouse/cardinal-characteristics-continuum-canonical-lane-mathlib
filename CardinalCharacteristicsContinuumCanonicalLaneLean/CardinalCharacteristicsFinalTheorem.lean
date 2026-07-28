import CardinalCharacteristicsContinuumCanonicalLaneLean.CardinalCharacteristicsGateLemmas

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

def ConstrainedCardinalCharacteristicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cardinal_characteristics_endgame (A : AdmissibleClass) :
    ConstrainedCardinalCharacteristicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse