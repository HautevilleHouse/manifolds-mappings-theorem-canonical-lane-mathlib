import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManifoldsMappingsTheoremCanonicalLaneLean.MappingsBridgeLemmas

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

def ConstrainedMappingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mappings_endgame (A : AdmissibleClass) :
    ConstrainedMappingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse
