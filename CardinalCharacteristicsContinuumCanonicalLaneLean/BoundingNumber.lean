import CardinalCharacteristicsContinuumCanonicalLaneLean.CardinalCharacteristicsAdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure BoundingNumberPackage where
  families : Type u
  boundingCardinal : Cardinal
  boundingDefined : Prop
  evidence : boundingDefined

def BoundingNumberClosed (B : BoundingNumberPackage) : Prop := B.boundingDefined

theorem bounding_number_closed (B : BoundingNumberPackage) : BoundingNumberClosed B := by
  exact B.evidence

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse