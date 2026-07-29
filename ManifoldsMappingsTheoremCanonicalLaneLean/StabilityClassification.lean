import canonicalLaneMathlib.AdmissibleClass

/-!
# Stability and Classification Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure StabilityClassificationPackage where
  mapping : Type u → Type v
  stability : Prop
  classification : Prop
  equivalenceRelation : Prop
  invariance : Prop

structure StabilityClassificationEvidence (S : StabilityClassificationPackage) where
  stabilityClosed : S.stability
  classificationClosed : S.classification
  equivalenceRelationClosed : S.equivalenceRelation
  invarianceClosed : S.invariance

def StabilityClassificationClosed (S : StabilityClassificationPackage) : Prop :=
  S.stability ∧ S.classification ∧ S.equivalenceRelation ∧ S.invariance

theorem stability_classification_closed_from_evidence
    (S : StabilityClassificationPackage)
    (E : StabilityClassificationEvidence S) : StabilityClassificationClosed S := by
  exact And.intro E.stabilityClosed
    (And.intro E.classificationClosed
      (And.intro E.equivalenceRelationClosed E.invarianceClosed))

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse