import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure DifferentialStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  chartAtlas : Type v
  atlasCompatible : Prop
  transitionMapsSmooth : Prop
  maximalAtlas : Prop

structure DifferentialStructureEvidence (D : DifferentialStructurePackage) where
  atlasCompatibleClosed : D.atlasCompatible
  transitionMapsSmoothClosed : D.transitionMapsSmooth
  maximalAtlasClosed : D.maximalAtlas

def DifferentialStructureClosed (D : DifferentialStructurePackage) : Prop :=
  D.atlasCompatible ∧ D.transitionMapsSmooth ∧ D.maximalAtlas

theorem differential_structure_closed_from_evidence (D : DifferentialStructurePackage)
    (E : DifferentialStructureEvidence D) : DifferentialStructureClosed D := by
  exact And.intro E.atlasCompatibleClosed
    (And.intro E.transitionMapsSmoothClosed E.maximalAtlasClosed)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse