import CardinalCharacteristicsContinuumCanonicalLaneLean.AdmissibleClass

/-!
# Tower Model Package
-/

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure TowerModelPackage where
  towerNumber : ℵ₁ → ℵ₁
  boundingNumberExceedsTower : towerNumber < 𝔟
  dominatingNumberExceedsTower : towerNumber < 𝔡
  towerModelClosed : Prop
  towerModelClosedProof : towerModelClosed

structure TowerModelEvidence (T : TowerModelPackage) where
  towerModelClosedClosed : T.towerModelClosed

def TowerModelClosed (T : TowerModelPackage) : Prop :=
  T.towerModelClosed

theorem tower_model_closed_from_evidence (T : TowerModelPackage) (E : TowerModelEvidence T) :
    TowerModelClosed T :=
  E.towerModelClosedClosed

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse