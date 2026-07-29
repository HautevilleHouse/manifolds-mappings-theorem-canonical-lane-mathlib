import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure MappingOperatorPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  mappingFunction : sourceManifold → targetManifold
  smoothness : Prop
  continuity : Prop
  surjectivity : Prop
  injectivity : Prop

structure MappingOperatorEvidence (M : MappingOperatorPackage) where
  smoothnessClosed : M.smoothness
  continuityClosed : M.continuity
  surjectivityClosed : M.surjectivity
  injectivityClosed : M.injectivity

def MappingOperatorClosed (M : MappingOperatorPackage) : Prop :=
  M.smoothness ∧ M.continuity ∧ M.surjectivity ∧ M.injectivity

theorem mapping_operator_closed_from_evidence (M : MappingOperatorPackage)
    (E : MappingOperatorEvidence M) : MappingOperatorClosed M := by
  exact And.intro E.smoothnessClosed
    (And.intro E.continuityClosed
      (And.intro E.surjectivityClosed E.injectivityClosed))

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse