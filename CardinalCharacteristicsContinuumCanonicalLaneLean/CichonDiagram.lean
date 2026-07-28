import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure CichonDiagramPackage where
  additivity : Prop
  BaireCategory : Prop
  coveringNumber : Prop
  uniformizability : Prop

structure CichonDiagramEvidence (C : CichonDiagramPackage) where
  additivityClosed : C.additivity
  BaireCategoryClosed : C.BaireCategory
  coveringNumberClosed : C.coveringNumber
  uniformizabilityClosed : C.uniformizability

def CichonDiagramClosed (C : CichonDiagramPackage) : Prop :=
  C.additivity ∧ C.BaireCategory ∧ C.coveringNumber ∧ C.uniformizability

theorem cichon_diagram_closed_from_evidence (C : CichonDiagramPackage) (E : CichonDiagramEvidence C) :
    CichonDiagramClosed C := by
  exact And.intro E.additivityClosed (And.intro E.BaireCategoryClosed (And.intro E.coveringNumberClosed E.uniformizabilityClosed))

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse