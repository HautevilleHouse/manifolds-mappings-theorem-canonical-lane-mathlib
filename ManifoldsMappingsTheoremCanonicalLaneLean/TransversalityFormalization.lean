import canonicalLaneMathlib.AdmissibleClass

/-!
# Transversality Formalization Package
-/

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure TransversalityFormalizationPackage where
  smoothMap : Type u → Type v
  submanifold : Type w
  transversalityCondition : Prop
  intersectionSubmanifold : Prop
  parametricTransversality : Prop

structure TransversalityFormalizationEvidence (T : TransversalityFormalizationPackage) where
  transversalityConditionClosed : T.transversalityCondition
  intersectionSubmanifoldClosed : T.intersectionSubmanifold
  parametricTransversalityClosed : T.parametricTransversality

def TransversalityFormalizationClosed (T : TransversalityFormalizationPackage) : Prop :=
  T.transversalityCondition ∧ T.intersectionSubmanifold ∧ T.parametricTransversality

theorem transversality_formalization_closed_from_evidence
    (T : TransversalityFormalizationPackage)
    (E : TransversalityFormalizationEvidence T) :
    TransversalityFormalizationClosed T := by
  exact And.intro E.transversalityConditionClosed
    (And.intro E.intersectionSubmanifoldClosed E.parametricTransversalityClosed)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse