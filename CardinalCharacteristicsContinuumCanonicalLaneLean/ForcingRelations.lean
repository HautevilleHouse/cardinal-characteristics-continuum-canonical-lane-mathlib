import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CardinalCharacteristicsContinuumCanonicalLaneLean

structure ForcingRelationsPackage where
  boundingDominatingInequality : Prop
  dominatingBoundingInequality : Prop
  splittingUnsplittingInequality : Prop
  evadingInevitablyInequality : Prop
  uniformityCoveringInequality : Prop
  diagramEmbedding : Prop
  consistencyRelative : Prop

structure ForcingRelationsEvidence (F : ForcingRelationsPackage) where
  boundingDominatingInequalityClosed : F.boundingDominatingInequality
  dominatingBoundingInequalityClosed : F.dominatingBoundingInequality
  splittingUnsplittingInequalityClosed : F.splittingUnsplittingInequality
  evadingInevitablyInequalityClosed : F.evadingInevitablyInequality
  uniformityCoveringInequalityClosed : F.uniformityCoveringInequality
  diagramEmbeddingClosed : F.diagramEmbedding
  consistencyRelativeClosed : F.consistencyRelative

def ForcingRelationsClosed (F : ForcingRelationsPackage) : Prop :=
  F.boundingDominatingInequality ∧ F.dominatingBoundingInequality ∧
  F.splittingUnsplittingInequality ∧ F.evadingInevitablyInequality ∧
  F.uniformityCoveringInequality ∧ F.diagramEmbedding ∧ F.consistencyRelative

theorem forcing_relations_closed_from_evidence (F : ForcingRelationsPackage) (E : ForcingRelationsEvidence F) :
  ForcingRelationsClosed F := by
  exact And.intro E.boundingDominatingInequalityClosed
    (And.intro E.dominatingBoundingInequalityClosed
      (And.intro E.splittingUnsplittingInequalityClosed
        (And.intro E.evadingInevitablyInequalityClosed
          (And.intro E.uniformityCoveringInequalityClosed
            (And.intro E.diagramEmbeddingClosed E.consistencyRelativeClosed)))))

end CardinalCharacteristicsContinuumCanonicalLaneLean
end HautevilleHouse