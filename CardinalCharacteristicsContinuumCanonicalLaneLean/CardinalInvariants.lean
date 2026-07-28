import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure CardinalInvariantsPackage where
  boundingNumber : Cardinal
  dominatingNumber : Cardinal
  splittingNumber : Cardinal
  unsplittingNumber : Cardinal
  evadingNumber : Cardinal
  inevitablyNumber : Cardinal
  uniformityMeasure : Cardinal
  coveringMeasure : Cardinal
  boundingDefined : Prop
  dominatingDefined : Prop
  splittingDefined : Prop
  unsplittingDefined : Prop
  evadingDefined : Prop
  inevitablyDefined : Prop
  uniformityDefined : Prop
  coveringDefined : Prop

structure CardinalInvariantsEvidence (C : CardinalInvariantsPackage) where
  boundingDefinedClosed : C.boundingDefined
  dominatingDefinedClosed : C.dominatingDefined
  splittingDefinedClosed : C.splittingDefined
  unsplittingDefinedClosed : C.unsplittingDefined
  evadingDefinedClosed : C.evadingDefined
  inevitablyDefinedClosed : C.inevitablyDefined
  uniformityDefinedClosed : C.uniformityDefined
  coveringDefinedClosed : C.coveringDefined

def CardinalInvariantsClosed (C : CardinalInvariantsPackage) : Prop :=
  C.boundingDefined ∧ C.dominatingDefined ∧ C.splittingDefined ∧
  C.unsplittingDefined ∧ C.evadingDefined ∧ C.inevitablyDefined ∧
  C.uniformityDefined ∧ C.coveringDefined

theorem cardinal_invariants_closed_from_evidence (C : CardinalInvariantsPackage) (E : CardinalInvariantsEvidence C) :
  CardinalInvariantsClosed C := by
  exact And.intro E.boundingDefinedClosed
    (And.intro E.dominatingDefinedClosed
      (And.intro E.splittingDefinedClosed
        (And.intro E.unsplittingDefinedClosed
          (And.intro E.evadingDefinedClosed
            (And.intro E.inevitablyDefinedClosed
              (And.intro E.uniformityDefinedClosed E.coveringDefinedClosed))))))

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse