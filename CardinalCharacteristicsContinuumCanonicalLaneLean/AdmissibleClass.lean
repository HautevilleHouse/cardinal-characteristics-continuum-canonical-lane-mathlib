import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure AdmissibleClass where
  object : CCCAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CCCWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse