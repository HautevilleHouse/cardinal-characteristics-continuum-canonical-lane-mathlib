import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure TowerNumberPackage where
  towerNumber : Prop
  dominatingNumber : Prop
  boundingNumber : Prop
  splittingNumber : Prop

structure TowerNumberEvidence (T : TowerNumberPackage) where
  towerNumberClosed : T.towerNumber
  dominatingNumberClosed : T.dominatingNumber
  boundingNumberClosed : T.boundingNumber
  splittingNumberClosed : T.splittingNumber

def TowerNumberClosed (T : TowerNumberPackage) : Prop :=
  T.towerNumber ∧ T.dominatingNumber ∧ T.boundingNumber ∧ T.splittingNumber

theorem tower_number_closed_from_evidence (T : TowerNumberPackage) (E : TowerNumberEvidence T) :
    TowerNumberClosed T := by
  exact And.intro E.towerNumberClosed (And.intro E.dominatingNumberClosed (And.intro E.boundingNumberClosed E.splittingNumberClosed))

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse