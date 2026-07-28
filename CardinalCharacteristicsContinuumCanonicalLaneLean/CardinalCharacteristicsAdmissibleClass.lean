import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CardinalCharacteristicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CardinalCharacteristicsAdmittedObject where
  space : CardinalCharacteristicsSpace
  continuumHypothesis : Prop
  boundingNumberExists : Prop
  dominatingNumberExists : Prop
  splittingNumberExists : Prop
  reapingNumberExists : Prop
  cichonRelations : Prop
  conclusion : boundingNumberExists ∧ dominatingNumberExists ∧ splittingNumberExists ∧ reapingNumberExists ∧ cichonRelations

structure CardinalCharacteristicsEndgameState where
  object : CardinalCharacteristicsAdmittedObject

def CardinalCharacteristicsWitnessClosed (O : CardinalCharacteristicsAdmittedObject) : Prop :=
  O.boundingNumberExists ∧ O.dominatingNumberExists ∧ O.splittingNumberExists ∧ O.reapingNumberExists

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse