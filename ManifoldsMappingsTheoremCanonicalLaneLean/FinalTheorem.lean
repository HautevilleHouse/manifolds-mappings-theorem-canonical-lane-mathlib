import HautevilleHouse.ManifoldsMappingsTheoremCanonicalLaneLean.MappingGateLemmas

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

def ConstrainedManifoldMappingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_manifold_mapping_endgame (A : AdmissibleClass) :
    ConstrainedManifoldMappingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse
