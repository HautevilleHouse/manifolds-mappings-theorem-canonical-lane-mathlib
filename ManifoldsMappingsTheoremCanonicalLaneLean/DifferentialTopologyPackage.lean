import canonicalLaneMathlib.AdmissibleClass

/-!
# Differential Topology Package for Manifold Mappings Theorem
-/

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure DifferentialTopologyPackage where
  manifolds : Type u
  charts : Type v
  atlas : Type w
  smoothStructure : Prop
  transitionMaps : Prop
  mappingClass : Prop
  smoothness : Prop

structure DifferentialTopologyEvidence (D : DifferentialTopologyPackage) where
  smoothStructureClosed : D.smoothStructure
  transitionMapsClosed : D.transitionMaps
  mappingClassClosed : D.mappingClass
  smoothnessClosed : D.smoothness

def DifferentialTopologyClosed (D : DifferentialTopologyPackage) : Prop :=
  D.smoothStructure ∧ D.transitionMaps ∧ D.mappingClass ∧ D.smoothness

theorem differential_topology_closed_from_evidence (D : DifferentialTopologyPackage)
    (E : DifferentialTopologyEvidence D) : DifferentialTopologyClosed D := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.transitionMapsClosed
      (And.intro E.mappingClassClosed E.smoothnessClosed))

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse