import CardinalCharacteristicsContinuumCanonicalLaneLean.CardinalCharacteristicsAdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CardinalCharacteristicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse