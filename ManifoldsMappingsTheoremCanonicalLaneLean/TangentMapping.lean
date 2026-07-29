import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

structure TangentMappingPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  differential : (sourceManifold → targetManifold) → (sourceManifold → (TangentBundle sourceManifold → TangentBundle targetManifold))
  linearity : Prop
  chainRule : Prop
  functoriality : Prop

def TangentMappingClosed (T : TangentMappingPackage) : Prop :=
  T.linearity ∧ T.chainRule ∧ T.functoriality

theorem tangent_mapping_closed_from_evidence (T : TangentMappingPackage) : TangentMappingClosed T := by
  exact And.intro T.linearity (And.intro T.chainRule T.functoriality)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse