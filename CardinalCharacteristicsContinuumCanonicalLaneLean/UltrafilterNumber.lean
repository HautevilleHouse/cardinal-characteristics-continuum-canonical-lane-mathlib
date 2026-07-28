import CardinalCharacteristicsContinuumCanonicalLaneLean.AdmissibleClass

/-!
# Ultrafilter Number Package
-/

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure UltrafilterNumberPackage where
  ultrafilterNumber : ℵ₁ → ℵ₁
  reapingNumberLeUltrafilter : ℵ₁ → ℵ₁
  ultrafilterClosed : Prop
  ultrafilterClosedProof : ultrafilterClosed

structure UltrafilterNumberEvidence (U : UltrafilterNumberPackage) where
  ultrafilterClosedClosed : U.ultrafilterClosed

def UltrafilterNumberClosed (U : UltrafilterNumberPackage) : Prop :=
  U.ultrafilterClosed

theorem ultrafilter_number_closed_from_evidence (U : UltrafilterNumberPackage) (E : UltrafilterNumberEvidence U) :
    UltrafilterNumberClosed U :=
  E.ultrafilterClosedClosed

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse