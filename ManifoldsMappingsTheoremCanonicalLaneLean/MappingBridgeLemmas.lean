import HautevilleHouse.ManifoldsMappingsTheoremCanonicalLaneLean.ManifoldMappingAdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMappingsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.mappingConclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.mappingConclusion

end ManifoldsMappingsTheoremCanonicalLaneLean
end HautevilleHouse
