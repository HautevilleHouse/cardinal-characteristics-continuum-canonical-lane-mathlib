import canonicalLaneMathlib.AdmissibleClass
import Mathlib.SetTheory.Cardinal.Basic

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

open Set

structure CardinalContinuumSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  isSeparable : Prop
  continuumCardinal : Cardinal

structure CardinalAdmittedObject where
  space : CardinalContinuumSpace
  coveringNumberBound : Prop
  dominatingNumberBound : Prop
  boundingNumberBound : Prop
  splittingNumberBound : Prop
  conclusion : coveringNumberBound ∧ dominatingNumberBound ∧ boundingNumberBound ∧ splittingNumberBound

structure CardinalEndgameState where
  object : CardinalAdmittedObject

def CardinalWitnessClosed (O : CardinalAdmittedObject) : Prop :=
  O.coveringNumberBound ∧ O.dominatingNumberBound ∧ O.boundingNumberBound ∧ O.splittingNumberBound

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse