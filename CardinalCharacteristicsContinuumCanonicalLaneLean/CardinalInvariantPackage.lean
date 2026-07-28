import CardinalCharacteristicsContinuumCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure CardinalInvariantPackage where
  invariantName : String
  invariantDefinition : Prop
  lowerBound : ℵ₁ -- placeholder for cardinal
  upperBound : ℵ₁
  towerConstruction : Prop
  dominatingFamily : Prop
  evidence : invariantDefinition ∧ towerConstruction ∧ dominatingFamily

def CardinalInvariantClosed (P : CardinalInvariantPackage) : Prop :=
  P.invariantDefinition ∧ P.towerConstruction ∧ P.dominatingFamily

theorem cardinal_invariant_closed_from_evidence (P : CardinalInvariantPackage) :
    CardinalInvariantClosed P := by
  exact P.evidence

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse