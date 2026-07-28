import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure ZFCIndependencePackage where
  continuumHypothesisIndependent : Prop
  boundingDominatingIndependence : Prop
  splittingUnsplittingIndependence : Prop
  evadingInevitablyIndependence : Prop
  uniformityCoveringIndependence : Prop
  diagramConsistencyIndependence : Prop
  ZFCModel : Type u
  modelSatisfiesZFC : Prop
  modelViolatesCH : Prop

structure ZFCIndependenceEvidence (Z : ZFCIndependencePackage) where
  continuumHypothesisIndependentClosed : Z.continuumHypothesisIndependent
  boundingDominatingIndependenceClosed : Z.boundingDominatingIndependence
  splittingUnsplittingIndependenceClosed : Z.splittingUnsplittingIndependence
  evadingInevitablyIndependenceClosed : Z.evadingInevitablyIndependence
  uniformityCoveringIndependenceClosed : Z.uniformityCoveringIndependence
  diagramConsistencyIndependenceClosed : Z.diagramConsistencyIndependence
  modelSatisfiesZFCClosed : Z.modelSatisfiesZFC
  modelViolatesCHClosed : Z.modelViolatesCH

def ZFCIndependenceClosed (Z : ZFCIndependencePackage) : Prop :=
  Z.continuumHypothesisIndependent ∧ Z.boundingDominatingIndependence ∧
  Z.splittingUnsplittingIndependence ∧ Z.evadingInevitablyIndependence ∧
  Z.uniformityCoveringIndependence ∧ Z.diagramConsistencyIndependence ∧
  Z.modelSatisfiesZFC ∧ Z.modelViolatesCH

theorem zfc_independence_closed_from_evidence (Z : ZFCIndependencePackage) (E : ZFCIndependenceEvidence Z) :
  ZFCIndependenceClosed Z := by
  exact And.intro E.continuumHypothesisIndependentClosed
    (And.intro E.boundingDominatingIndependenceClosed
      (And.intro E.splittingUnsplittingIndependenceClosed
        (And.intro E.evadingInevitablyIndependenceClosed
          (And.intro E.uniformityCoveringIndependenceClosed
            (And.intro E.diagramConsistencyIndependenceClosed
              (And.intro E.modelSatisfiesZFCClosed E.modelViolatesCHClosed))))))

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse