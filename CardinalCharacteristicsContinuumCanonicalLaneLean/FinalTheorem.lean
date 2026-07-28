import canonicalLaneMathlib.AdmissibleClass
import CardinalCharacteristicsContinuumCanonicalLaneLean.BridgeLemmas
import CardinalCharacteristicsContinuumCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

def ConstrainedCCCClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ccc_endgame (A : AdmissibleClass) :
  ConstrainedCCCClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse