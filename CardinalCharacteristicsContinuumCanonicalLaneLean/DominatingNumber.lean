import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure DominatingNumberPackage where
  dominatingNumber : Prop
  boundingNumber : Prop
  splittingNumber : Prop
  reapingNumber : Prop

structure DominatingNumberEvidence (D : DominatingNumberPackage) where
  dominatingNumberClosed : D.dominatingNumber
  boundingNumberClosed : D.boundingNumber
  splittingNumberClosed : D.splittingNumber
  reapingNumberClosed : D.reapingNumber

def DominatingNumberClosed (D : DominatingNumberPackage) : Prop :=
  D.dominatingNumber ∧ D.boundingNumber ∧ D.splittingNumber ∧ D.reapingNumber

theorem dominating_number_closed_from_evidence (D : DominatingNumberPackage) (E : DominatingNumberEvidence D) :
    DominatingNumberClosed D := by
  exact And.intro E.dominatingNumberClosed (And.intro E.boundingNumberClosed (And.intro E.splittingNumberClosed E.reapingNumberClosed))

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse